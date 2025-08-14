// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./UniswapV2.sol";
import "./UniswapV3.sol";
import "./TornadoCash.sol";
import {ChainsEnumerableMapLib} from "./utils/ChainsEnumerableMapLib.sol";

contract Triggers is BaseTriggers {
    using ChainsEnumerableMapLib for ChainsEnumerableMapLib.ChainsToChainIdAbiMap;
    using ChainsEnumerableMapLib for ChainsEnumerableMapLib.ChainsToChainIdContractMap;

    UniswapV2Listener uniswapV2Listener;
    UniswapV3Listener uniswapV3Listener;
    TornadoCashListener tornadoCashListener;

    // per protocol config
    struct ProtocolConfigAbi {
        Trigger[] triggers;
        ChainsEnumerableMapLib.ChainsToChainIdAbiMap chainIdToAbiEnumerable;
    }

    struct ProtocolConfigAddress {
        Trigger[] triggers;
        ChainsEnumerableMapLib.ChainsToChainIdContractMap chainIdToAddressEnumerable;
    }

    ProtocolConfigAbi internal univ2Config;
    ProtocolConfigAbi internal univ3Config;
    ProtocolConfigAddress internal tornadoCashConfig;

    constructor() {
        // init listeners
        uniswapV2Listener = new UniswapV2Listener();
        uniswapV3Listener = new UniswapV3Listener();
        tornadoCashListener = new TornadoCashListener();

        // TornadoCash contract addresses
        address[4] memory tornadoContracts = [
            0x12D66f87A04A9E220743712cE6d9bB1B5616B8Fc,
            0x47CE0C6eD5B0Ce3d3A51fdb1C52DC66a7c3c2936,
            0x910Cbd523D972eb0a6f4cAe4618aD62622b39DbF,
            0xA160cdAB225685dA1d56aa342Ad8841c3b53f291
        ];
        for (uint i = 0; i < tornadoContracts.length; i++) {
            addTrigger(
                chainContract(Chains.Ethereum, tornadoContracts[i]),
                tornadoCashListener.triggerOnDepositEvent()
            );
            addTrigger(
                chainContract(Chains.Ethereum, tornadoContracts[i]),
                tornadoCashListener.triggerOnWithdrawalEvent()
            );
        }

        // UniswapV2 protocol to abi
        univ2Config.chainIdToAbiEnumerable.set(
            Chains.Ethereum,
            chainAbi(Chains.Ethereum, UniswapV2Pair$Abi())
        );
        univ2Config.chainIdToAbiEnumerable.set(
            Chains.Base,
            chainAbi(Chains.Base, UniswapV2Pair$Abi())
        );
        univ2Config.chainIdToAbiEnumerable.set(
            Chains.Ink,
            chainAbi(Chains.Ink, UniswapV2Pair$Abi())
        );
        univ2Config.chainIdToAbiEnumerable.set(
            Chains.WorldChain,
            chainAbi(Chains.WorldChain, UniswapV2Pair$Abi())
        );
        univ2Config.chainIdToAbiEnumerable.set(
            Chains.Soneium,
            chainAbi(Chains.Soneium, UniswapV2Pair$Abi())
        );
        univ2Config.chainIdToAbiEnumerable.set(
            Chains.Unichain,
            chainAbi(Chains.Unichain, UniswapV2Pair$Abi())
        );
        univ2Config.chainIdToAbiEnumerable.set(
            Chains.Zora,
            chainAbi(Chains.Zora, UniswapV2Pair$Abi())
        );

        // UniswapV3 protocol to abi
        univ3Config.chainIdToAbiEnumerable.set(
            Chains.Ethereum,
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi())
        );
        univ3Config.chainIdToAbiEnumerable.set(
            Chains.Base,
            chainAbi(Chains.Base, UniswapV3Pool$Abi())
        );
        univ3Config.chainIdToAbiEnumerable.set(
            Chains.Ink,
            chainAbi(Chains.Ink, UniswapV3Pool$Abi())
        );
        univ3Config.chainIdToAbiEnumerable.set(
            Chains.Unichain,
            chainAbi(Chains.Unichain, UniswapV3Pool$Abi())
        );
        univ3Config.chainIdToAbiEnumerable.set(
            Chains.Zora,
            chainAbi(Chains.Zora, UniswapV3Pool$Abi())
        );
        univ3Config.chainIdToAbiEnumerable.set(
            Chains.WorldChain,
            chainAbi(Chains.WorldChain, UniswapV3Pool$Abi())
        );
        univ3Config.chainIdToAbiEnumerable.set(
            Chains.Soneium,
            chainAbi(Chains.Soneium, UniswapV3Pool$Abi())
        );

        // per protocol triggers
        univ2Config.triggers = [uniswapV2Listener.triggerOnSwapEvent()];
        univ3Config.triggers = [uniswapV3Listener.triggerOnSwapFunction()];
        tornadoCashConfig.triggers = [
            tornadoCashListener.triggerOnDepositEvent(),
            tornadoCashListener.triggerOnWithdrawalEvent()
        ];
    }

    function addTriggerForProtocol(ProtocolConfigAbi storage config) internal {
        for (uint256 i = 0; i < config.chainIdToAbiEnumerable.length(); i++) {
            (, ChainIdAbi memory _abi) = config
                .chainIdToAbiEnumerable
                .getAtIndex(i);
            addTriggers(_abi, config.triggers);
        }
    }

    function addTriggerForProtocol(
        ProtocolConfigAddress storage config
    ) internal {
        for (
            uint256 i = 0;
            i < config.chainIdToAddressEnumerable.length();
            i++
        ) {
            (, ChainIdContract memory _contract) = config
                .chainIdToAddressEnumerable
                .getAtIndex(i);
            addTriggers(_contract, config.triggers);
        }
    }

    function triggers() external virtual override {
        addTriggerForProtocol(univ2Config);
        addTriggerForProtocol(univ3Config);
        addTriggerForProtocol(tornadoCashConfig);
    }
}
