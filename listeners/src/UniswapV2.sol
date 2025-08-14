// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
// import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";
import "./interfaces/Uniswap/UniswapInterfaces.sol";

contract UniswapV2Listener is
    UniswapV2Pair$OnSwapEvent,
    DexUtils,

{
    event UniswapV2Swap(
        uint64 chainId,
        bytes32 transactionHash,
        uint64 blockNumber,
        uint64 blockTimestamp,
        address txnOriginator,
        address liquidityPool,
        address recipient,
        string dex,
        address fromToken,
        uint256 fromTokenAmt,
        string fromTokenName,
        string fromTokenSymbol,
        uint8 fromTokenDecimals,
        address toToken,
        uint256 toTokenAmt,
        string toTokenName,
        string toTokenSymbol,
        uint8 toTokenDecimals
    );

    function onSwapEvent(
        EventContext memory ctx,
        UniswapV2Pair$SwapEventParams memory inputs
    ) external override {
        (address token0, address token1) = DexUtils.getUniswapV2PairMetadata(
            ctx.txn.call.callee()
        );

        (
            string memory token0Name,
            string memory token0Symbol,
            uint256 token0Decimals
        ) = getMetadata(token0);
        (
            string memory token1Name,
            string memory token1Symbol,
            uint256 token1Decimals
        ) = getMetadata(token1);

        address factory = IUniswapV2Pair(ctx.txn.call.callee()).factory();
        string memory dex = "";
        if (factory == DexUtils.getUniswapV2Factory()) {
            dex = "UniswapV2";
        }

        bool token0Sold = inputs.amount0In > 0;

        emit UniswapV2Swap(
            uint64(block.chainid),
            ctx.txn.hash(),
            uint64(block.number),
            uint64(block.timestamp),
            tx.origin,
            ctx.txn.call.callee(),
            inputs.to,
            dex,
            token0Sold ? token0 : token1,
            token0Sold ? inputs.amount0In : inputs.amount1In,
            token0Sold ? token0Name : token1Name,
            token0Sold ? token0Symbol : token1Symbol,
            uint8(token0Sold ? token0Decimals : token1Decimals),
            token0Sold ? token1 : token0,
            token0Sold ? inputs.amount1Out : inputs.amount0Out,
            token0Sold ? token1Name : token0Name,
            token0Sold ? token1Symbol : token0Symbol,
            uint8(token0Sold ? token1Decimals : token0Decimals)
        );
    }
}
