// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function UniswapV2Pair$Abi() pure returns (Abi memory) {
    return Abi("UniswapV2Pair");
}
struct UniswapV2Pair$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct UniswapV2Pair$MinimumLiquidityFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$PermitTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct UniswapV2Pair$AllowanceFunctionInputs {
    address outArg0;
    address outArg1;
}

struct UniswapV2Pair$AllowanceFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$ApproveFunctionInputs {
    address spender;
    uint256 value;
}

struct UniswapV2Pair$ApproveFunctionOutputs {
    bool outArg0;
}

struct UniswapV2Pair$BalanceOfFunctionInputs {
    address outArg0;
}

struct UniswapV2Pair$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$BurnFunctionInputs {
    address to;
}

struct UniswapV2Pair$BurnFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV2Pair$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct UniswapV2Pair$FactoryFunctionOutputs {
    address outArg0;
}

struct UniswapV2Pair$GetReservesFunctionOutputs {
    uint112 _reserve0;
    uint112 _reserve1;
    uint32 _blockTimestampLast;
}

struct UniswapV2Pair$InitializeFunctionInputs {
    address _token0;
    address _token1;
}

struct UniswapV2Pair$KLastFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$MintFunctionInputs {
    address to;
}

struct UniswapV2Pair$MintFunctionOutputs {
    uint256 liquidity;
}

struct UniswapV2Pair$NameFunctionOutputs {
    string outArg0;
}

struct UniswapV2Pair$NoncesFunctionInputs {
    address outArg0;
}

struct UniswapV2Pair$NoncesFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$PermitFunctionInputs {
    address owner;
    address spender;
    uint256 value;
    uint256 deadline;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct UniswapV2Pair$Price0CumulativeLastFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$Price1CumulativeLastFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$SkimFunctionInputs {
    address to;
}

struct UniswapV2Pair$SwapFunctionInputs {
    uint256 amount0Out;
    uint256 amount1Out;
    address to;
    bytes data;
}

struct UniswapV2Pair$SymbolFunctionOutputs {
    string outArg0;
}

struct UniswapV2Pair$Token0FunctionOutputs {
    address outArg0;
}

struct UniswapV2Pair$Token1FunctionOutputs {
    address outArg0;
}

struct UniswapV2Pair$TotalSupplyFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$TransferFunctionInputs {
    address to;
    uint256 value;
}

struct UniswapV2Pair$TransferFunctionOutputs {
    bool outArg0;
}

struct UniswapV2Pair$TransferFromFunctionInputs {
    address from;
    address to;
    uint256 value;
}

struct UniswapV2Pair$TransferFromFunctionOutputs {
    bool outArg0;
}

struct UniswapV2Pair$ApprovalEventParams {
    address owner;
    address spender;
    uint256 value;
}

struct UniswapV2Pair$BurnEventParams {
    address sender;
    uint256 amount0;
    uint256 amount1;
    address to;
}

struct UniswapV2Pair$MintEventParams {
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV2Pair$SwapEventParams {
    address sender;
    uint256 amount0In;
    uint256 amount1In;
    uint256 amount0Out;
    uint256 amount1Out;
    address to;
}

struct UniswapV2Pair$SyncEventParams {
    uint112 reserve0;
    uint112 reserve1;
}

struct UniswapV2Pair$TransferEventParams {
    address from;
    address to;
    uint256 value;
}

abstract contract UniswapV2Pair$OnApprovalEvent {
    function onApprovalEvent(EventContext memory ctx, UniswapV2Pair$ApprovalEventParams memory inputs) virtual external;

    function triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApprovalEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnBurnEvent {
    function onBurnEvent(EventContext memory ctx, UniswapV2Pair$BurnEventParams memory inputs) virtual external;

    function triggerOnBurnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0xdccd412f0b1252819cb1fd330b93224ca42612892bb3f4f789976e6d81936496),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBurnEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnMintEvent {
    function onMintEvent(EventContext memory ctx, UniswapV2Pair$MintEventParams memory inputs) virtual external;

    function triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0x4c209b5fc8ad50758f13e2e1088ba56a560dff690a1c6fef26394f4c03821c4f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMintEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSwapEvent {
    function onSwapEvent(EventContext memory ctx, UniswapV2Pair$SwapEventParams memory inputs) virtual external;

    function triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0xd78ad95fa46c994b6551d0da85fc275fe613ce37657fb8d5e3d130840159d822),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSwapEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSyncEvent {
    function onSyncEvent(EventContext memory ctx, UniswapV2Pair$SyncEventParams memory inputs) virtual external;

    function triggerOnSyncEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSyncEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTransferEvent {
    function onTransferEvent(EventContext memory ctx, UniswapV2Pair$TransferEventParams memory inputs) virtual external;

    function triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnDomainSeparatorFunction {
    function onDomainSeparatorFunction(FunctionContext memory ctx, UniswapV2Pair$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDomainSeparatorFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreDomainSeparatorFunction {
    function preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDomainSeparatorFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnMinimumLiquidityFunction {
    function onMinimumLiquidityFunction(FunctionContext memory ctx, UniswapV2Pair$MinimumLiquidityFunctionOutputs memory outputs) virtual external;

    function triggerOnMinimumLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xba9a7a56),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMinimumLiquidityFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreMinimumLiquidityFunction {
    function preMinimumLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMinimumLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xba9a7a56),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMinimumLiquidityFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPermitTypehashFunction {
    function onPermitTypehashFunction(FunctionContext memory ctx, UniswapV2Pair$PermitTypehashFunctionOutputs memory outputs) virtual external;

    function triggerOnPermitTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x30adf81f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermitTypehashFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePermitTypehashFunction {
    function prePermitTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePermitTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x30adf81f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePermitTypehashFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnAllowanceFunction {
    function onAllowanceFunction(FunctionContext memory ctx, UniswapV2Pair$AllowanceFunctionInputs memory inputs, UniswapV2Pair$AllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllowanceFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreAllowanceFunction {
    function preAllowanceFunction(PreFunctionContext memory ctx, UniswapV2Pair$AllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAllowanceFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnApproveFunction {
    function onApproveFunction(FunctionContext memory ctx, UniswapV2Pair$ApproveFunctionInputs memory inputs, UniswapV2Pair$ApproveFunctionOutputs memory outputs) virtual external;

    function triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApproveFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreApproveFunction {
    function preApproveFunction(PreFunctionContext memory ctx, UniswapV2Pair$ApproveFunctionInputs memory inputs) virtual external;

    function triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preApproveFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnBalanceOfFunction {
    function onBalanceOfFunction(FunctionContext memory ctx, UniswapV2Pair$BalanceOfFunctionInputs memory inputs, UniswapV2Pair$BalanceOfFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceOfFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreBalanceOfFunction {
    function preBalanceOfFunction(PreFunctionContext memory ctx, UniswapV2Pair$BalanceOfFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceOfFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnBurnFunction {
    function onBurnFunction(FunctionContext memory ctx, UniswapV2Pair$BurnFunctionInputs memory inputs, UniswapV2Pair$BurnFunctionOutputs memory outputs) virtual external;

    function triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x89afcb44),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBurnFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreBurnFunction {
    function preBurnFunction(PreFunctionContext memory ctx, UniswapV2Pair$BurnFunctionInputs memory inputs) virtual external;

    function triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x89afcb44),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBurnFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnDecimalsFunction {
    function onDecimalsFunction(FunctionContext memory ctx, UniswapV2Pair$DecimalsFunctionOutputs memory outputs) virtual external;

    function triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDecimalsFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreDecimalsFunction {
    function preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDecimalsFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnFactoryFunction {
    function onFactoryFunction(FunctionContext memory ctx, UniswapV2Pair$FactoryFunctionOutputs memory outputs) virtual external;

    function triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFactoryFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreFactoryFunction {
    function preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFactoryFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnGetReservesFunction {
    function onGetReservesFunction(FunctionContext memory ctx, UniswapV2Pair$GetReservesFunctionOutputs memory outputs) virtual external;

    function triggerOnGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetReservesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreGetReservesFunction {
    function preGetReservesFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetReservesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, UniswapV2Pair$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x485cc955),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, UniswapV2Pair$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x485cc955),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnKLastFunction {
    function onKLastFunction(FunctionContext memory ctx, UniswapV2Pair$KLastFunctionOutputs memory outputs) virtual external;

    function triggerOnKLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7464fc3d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onKLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreKLastFunction {
    function preKLastFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreKLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7464fc3d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preKLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnMintFunction {
    function onMintFunction(FunctionContext memory ctx, UniswapV2Pair$MintFunctionInputs memory inputs, UniswapV2Pair$MintFunctionOutputs memory outputs) virtual external;

    function triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x6a627842),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMintFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreMintFunction {
    function preMintFunction(PreFunctionContext memory ctx, UniswapV2Pair$MintFunctionInputs memory inputs) virtual external;

    function triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x6a627842),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMintFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnNameFunction {
    function onNameFunction(FunctionContext memory ctx, UniswapV2Pair$NameFunctionOutputs memory outputs) virtual external;

    function triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNameFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreNameFunction {
    function preNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNameFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnNoncesFunction {
    function onNoncesFunction(FunctionContext memory ctx, UniswapV2Pair$NoncesFunctionInputs memory inputs, UniswapV2Pair$NoncesFunctionOutputs memory outputs) virtual external;

    function triggerOnNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7ecebe00),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNoncesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreNoncesFunction {
    function preNoncesFunction(PreFunctionContext memory ctx, UniswapV2Pair$NoncesFunctionInputs memory inputs) virtual external;

    function triggerPreNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7ecebe00),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNoncesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPermitFunction {
    function onPermitFunction(FunctionContext memory ctx, UniswapV2Pair$PermitFunctionInputs memory inputs) virtual external;

    function triggerOnPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd505accf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermitFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePermitFunction {
    function prePermitFunction(PreFunctionContext memory ctx, UniswapV2Pair$PermitFunctionInputs memory inputs) virtual external;

    function triggerPrePermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd505accf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePermitFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPrice0CumulativeLastFunction {
    function onPrice0CumulativeLastFunction(FunctionContext memory ctx, UniswapV2Pair$Price0CumulativeLastFunctionOutputs memory outputs) virtual external;

    function triggerOnPrice0CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5909c0d5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPrice0CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePrice0CumulativeLastFunction {
    function prePrice0CumulativeLastFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePrice0CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5909c0d5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePrice0CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPrice1CumulativeLastFunction {
    function onPrice1CumulativeLastFunction(FunctionContext memory ctx, UniswapV2Pair$Price1CumulativeLastFunctionOutputs memory outputs) virtual external;

    function triggerOnPrice1CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5a3d5493),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPrice1CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePrice1CumulativeLastFunction {
    function prePrice1CumulativeLastFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePrice1CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5a3d5493),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePrice1CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSkimFunction {
    function onSkimFunction(FunctionContext memory ctx, UniswapV2Pair$SkimFunctionInputs memory inputs) virtual external;

    function triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xbc25cf77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSkimFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSkimFunction {
    function preSkimFunction(PreFunctionContext memory ctx, UniswapV2Pair$SkimFunctionInputs memory inputs) virtual external;

    function triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xbc25cf77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSkimFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSwapFunction {
    function onSwapFunction(FunctionContext memory ctx, UniswapV2Pair$SwapFunctionInputs memory inputs) virtual external;

    function triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSwapFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSwapFunction {
    function preSwapFunction(PreFunctionContext memory ctx, UniswapV2Pair$SwapFunctionInputs memory inputs) virtual external;

    function triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSwapFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSymbolFunction {
    function onSymbolFunction(FunctionContext memory ctx, UniswapV2Pair$SymbolFunctionOutputs memory outputs) virtual external;

    function triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSymbolFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSymbolFunction {
    function preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSymbolFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSyncFunction {
    function onSyncFunction(FunctionContext memory ctx) virtual external;

    function triggerOnSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSyncFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSyncFunction {
    function preSyncFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSyncFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnToken0Function {
    function onToken0Function(FunctionContext memory ctx, UniswapV2Pair$Token0FunctionOutputs memory outputs) virtual external;

    function triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onToken0Function.selector
        });
    }
}

abstract contract UniswapV2Pair$PreToken0Function {
    function preToken0Function(PreFunctionContext memory ctx) virtual external;

    function triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preToken0Function.selector
        });
    }
}

abstract contract UniswapV2Pair$OnToken1Function {
    function onToken1Function(FunctionContext memory ctx, UniswapV2Pair$Token1FunctionOutputs memory outputs) virtual external;

    function triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onToken1Function.selector
        });
    }
}

abstract contract UniswapV2Pair$PreToken1Function {
    function preToken1Function(PreFunctionContext memory ctx) virtual external;

    function triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preToken1Function.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTotalSupplyFunction {
    function onTotalSupplyFunction(FunctionContext memory ctx, UniswapV2Pair$TotalSupplyFunctionOutputs memory outputs) virtual external;

    function triggerOnTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTotalSupplyFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreTotalSupplyFunction {
    function preTotalSupplyFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTotalSupplyFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTransferFunction {
    function onTransferFunction(FunctionContext memory ctx, UniswapV2Pair$TransferFunctionInputs memory inputs, UniswapV2Pair$TransferFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreTransferFunction {
    function preTransferFunction(PreFunctionContext memory ctx, UniswapV2Pair$TransferFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTransferFromFunction {
    function onTransferFromFunction(FunctionContext memory ctx, UniswapV2Pair$TransferFromFunctionInputs memory inputs, UniswapV2Pair$TransferFromFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreTransferFromFunction {
    function preTransferFromFunction(PreFunctionContext memory ctx, UniswapV2Pair$TransferFromFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromFunction.selector
        });
    }
}

contract UniswapV2Pair$EmitAllEvents is
  UniswapV2Pair$OnApprovalEvent,
UniswapV2Pair$OnBurnEvent,
UniswapV2Pair$OnMintEvent,
UniswapV2Pair$OnSwapEvent,
UniswapV2Pair$OnSyncEvent,
UniswapV2Pair$OnTransferEvent
{
  event Approval(address owner, address spender, uint256 value);
event Burn(address sender, uint256 amount0, uint256 amount1, address to);
event Mint(address sender, uint256 amount0, uint256 amount1);
event Swap(address sender, uint256 amount0In, uint256 amount1In, uint256 amount0Out, uint256 amount1Out, address to);
event Sync(uint112 reserve0, uint112 reserve1);
event Transfer(address from, address to, uint256 value);

  function onApprovalEvent(EventContext memory ctx, UniswapV2Pair$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(inputs.owner, inputs.spender, inputs.value);
  }
function onBurnEvent(EventContext memory ctx, UniswapV2Pair$BurnEventParams memory inputs) virtual external override {
    emit Burn(inputs.sender, inputs.amount0, inputs.amount1, inputs.to);
  }
function onMintEvent(EventContext memory ctx, UniswapV2Pair$MintEventParams memory inputs) virtual external override {
    emit Mint(inputs.sender, inputs.amount0, inputs.amount1);
  }
function onSwapEvent(EventContext memory ctx, UniswapV2Pair$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.sender, inputs.amount0In, inputs.amount1In, inputs.amount0Out, inputs.amount1Out, inputs.to);
  }
function onSyncEvent(EventContext memory ctx, UniswapV2Pair$SyncEventParams memory inputs) virtual external override {
    emit Sync(inputs.reserve0, inputs.reserve1);
  }
function onTransferEvent(EventContext memory ctx, UniswapV2Pair$TransferEventParams memory inputs) virtual external override {
    emit Transfer(inputs.from, inputs.to, inputs.value);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](6);
    triggers[0] = this.triggerOnApprovalEvent();
    triggers[1] = this.triggerOnBurnEvent();
    triggers[2] = this.triggerOnMintEvent();
    triggers[3] = this.triggerOnSwapEvent();
    triggers[4] = this.triggerOnSyncEvent();
    triggers[5] = this.triggerOnTransferEvent();
    return triggers;
  }
}