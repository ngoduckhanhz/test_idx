// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";
import "./interfaces/Uniswap/UniswapInterfaces.sol";

contract UniswapV3Listener is UniswapV3Pool$OnSwapFunction, DexUtils {
    event UniswapV3Swap(
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

    function onSwapFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$SwapFunctionInputs memory inputs,
        UniswapV3Pool$SwapFunctionOutputs memory outputs
    ) external override {
        (address token0, address token1, ) = DexUtils.getUniswapV3PoolMetadata(
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

        string memory dex = "";
        address factory = IUniswapV3Pool(ctx.txn.call.callee()).factory();
        if (factory == DexUtils.getUniswapV3Factory()) {
            dex = "UniswapV3";
        }

        bool zeroForOne = inputs.zeroForOne;

        emit UniswapV3Swap(
            uint64(block.chainid),
            ctx.txn.hash(),
            uint64(block.number),
            uint64(block.timestamp),
            tx.origin,
            ctx.txn.call.callee(),
            inputs.recipient,
            dex,
            zeroForOne ? token0 : token1,
            zeroForOne
                ? (
                    outputs.amount0 < 0
                        ? uint256(-outputs.amount0)
                        : uint256(outputs.amount0)
                )
                : (
                    outputs.amount1 < 0
                        ? uint256(-outputs.amount1)
                        : uint256(outputs.amount1)
                ),
            zeroForOne ? token0Name : token1Name,
            zeroForOne ? token0Symbol : token1Symbol,
            uint8(zeroForOne ? token0Decimals : token1Decimals),
            zeroForOne ? token1 : token0,
            zeroForOne
                ? (
                    outputs.amount1 < 0
                        ? uint256(-outputs.amount1)
                        : uint256(outputs.amount1)
                )
                : (
                    outputs.amount0 < 0
                        ? uint256(-outputs.amount0)
                        : uint256(outputs.amount0)
                ),
            zeroForOne ? token1Name : token0Name,
            zeroForOne ? token1Symbol : token0Symbol,
            uint8(zeroForOne ? token1Decimals : token0Decimals)
        );
    }
}
