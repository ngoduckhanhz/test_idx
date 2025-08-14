// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";

contract TornadoCashListener is
    TornadoCash$OnDepositEvent,
    TornadoCash$OnWithdrawalEvent
{
    event TornadoDeposit(
        uint64 chainId,
        bytes32 transactionHash,
        uint64 blockNumber,
        uint64 blockTimestamp,
        address txnOriginator,
        address contractAddress,
        bytes32 commitment,
        uint32 leafIndex,
        uint256 timestamp,
        uint256 amount,
        string currency,
        string denomination,
        string protocol
    );

    event TornadoWithdrawal(
        uint64 chainId,
        bytes32 transactionHash,
        uint64 blockNumber,
        uint64 blockTimestamp,
        address txnOriginator,
        address contractAddress,
        address to,
        bytes32 nullifierHash,
        address relayer,
        uint256 fee,
        uint256 amount,
        string currency,
        string denomination,
        string protocol
    );

    // TornadoCash.sol
    function onDepositEvent(
        EventContext memory ctx,
        TornadoCash$DepositEventParams memory params
    ) external override {
        emit TornadoDeposit(
            uint64(block.chainid),
            ctx.txn.hash(),
            uint64(block.number),
            uint64(block.timestamp),
            tx.origin,
            ctx.txn.call.callee(),
            params.commitment,
            params.leafIndex,
            params.timestamp,
            getDepositAmount(ctx.txn.call.callee()),
            getCurrency(ctx.txn.call.callee()),
            getDenomination(ctx.txn.call.callee()),
            "TornadoCash"
        );
    }

    function onWithdrawalEvent(
        EventContext memory ctx,
        TornadoCash$WithdrawalEventParams memory params
    ) external override {
        emit TornadoWithdrawal(
            uint64(block.chainid),
            ctx.txn.hash(),
            uint64(block.number),
            uint64(block.timestamp),
            tx.origin,
            ctx.txn.call.callee(),
            params.to,
            params.nullifierHash,
            params.relayer,
            params.fee,
            getDepositAmount(ctx.txn.call.callee()),
            getCurrency(ctx.txn.call.callee()),
            getDenomination(ctx.txn.call.callee()),
            "TornadoCash"
        );
    }

    function getDepositAmount(
        address contractAddress
    ) internal pure returns (uint256) {
        // ETH Tornado contracts
        if (contractAddress == 0x47CE0C6eD5B0Ce3d3A51fdb1C52DC66a7c3c2936)
            return 0.1 ether;
        if (contractAddress == 0x910Cbd523D972eb0a6f4cAe4618aD62622b39DbF)
            return 1 ether;
        if (contractAddress == 0xA160cdAB225685dA1d56aa342Ad8841c3b53f291)
            return 10 ether;
        if (contractAddress == 0xFD8610d20aA15b7B2E3Be39B396a1bC3516c7144)
            return 100 ether;

        return 0;
    }

    function getCurrency(
        address contractAddress
    ) internal pure returns (string memory) {
        // ETH contracts
        if (
            contractAddress == 0x47CE0C6eD5B0Ce3d3A51fdb1C52DC66a7c3c2936 ||
            contractAddress == 0x910Cbd523D972eb0a6f4cAe4618aD62622b39DbF ||
            contractAddress == 0xA160cdAB225685dA1d56aa342Ad8841c3b53f291 ||
            contractAddress == 0xFD8610d20aA15b7B2E3Be39B396a1bC3516c7144
        ) {
            return "ETH";
        }

        return "UNKNOWN";
    }

    function getDenomination(
        address contractAddress
    ) internal pure returns (string memory) {
        if (contractAddress == 0x47CE0C6eD5B0Ce3d3A51fdb1C52DC66a7c3c2936)
            return "0.1";
        if (contractAddress == 0x910Cbd523D972eb0a6f4cAe4618aD62622b39DbF)
            return "1";
        if (contractAddress == 0xA160cdAB225685dA1d56aa342Ad8841c3b53f291)
            return "10";
        if (contractAddress == 0xFD8610d20aA15b7B2E3Be39B396a1bC3516c7144)
            return "100";

        return "0";
    }
}
