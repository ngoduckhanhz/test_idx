// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function TornadoCash$Abi() pure returns (Abi memory) {
    return Abi("TornadoCash");
}
struct TornadoCash$FieldSizeFunctionOutputs {
    uint256 outArg0;
}

struct TornadoCash$RootHistorySizeFunctionOutputs {
    uint32 outArg0;
}

struct TornadoCash$ZeroValueFunctionOutputs {
    uint256 outArg0;
}

struct TornadoCash$ChangeOperatorFunctionInputs {
    address _newOperator;
}

struct TornadoCash$CommitmentsFunctionInputs {
    bytes32 outArg0;
}

struct TornadoCash$CommitmentsFunctionOutputs {
    bool outArg0;
}

struct TornadoCash$CurrentRootIndexFunctionOutputs {
    uint32 outArg0;
}

struct TornadoCash$DenominationFunctionOutputs {
    uint256 outArg0;
}

struct TornadoCash$DepositFunctionInputs {
    bytes32 _commitment;
}

struct TornadoCash$FilledSubtreesFunctionInputs {
    uint256 outArg0;
}

struct TornadoCash$FilledSubtreesFunctionOutputs {
    bytes32 outArg0;
}

struct TornadoCash$GetLastRootFunctionOutputs {
    bytes32 outArg0;
}

struct TornadoCash$HashLeftRightFunctionInputs {
    bytes32 _left;
    bytes32 _right;
}

struct TornadoCash$HashLeftRightFunctionOutputs {
    bytes32 outArg0;
}

struct TornadoCash$InitializeTreeForMigrationFunctionInputs {
    bytes32[] _filledSubtrees;
    bytes32 _root;
}

struct TornadoCash$IsKnownRootFunctionInputs {
    bytes32 _root;
}

struct TornadoCash$IsKnownRootFunctionOutputs {
    bool outArg0;
}

struct TornadoCash$IsMigratedFunctionOutputs {
    bool outArg0;
}

struct TornadoCash$IsSpentFunctionInputs {
    bytes32 _nullifierHash;
}

struct TornadoCash$IsSpentFunctionOutputs {
    bool outArg0;
}

struct TornadoCash$IsSpentArrayFunctionInputs {
    bytes32[] _nullifierHashes;
}

struct TornadoCash$IsSpentArrayFunctionOutputs {
    bool[] spent;
}

struct TornadoCash$LevelsFunctionOutputs {
    uint32 outArg0;
}

struct TornadoCash$MigrateStateFunctionInputs {
    bytes32[] _commitments;
    bytes32[] _nullifierHashes;
}

struct TornadoCash$NextIndexFunctionOutputs {
    uint32 outArg0;
}

struct TornadoCash$NullifierHashesFunctionInputs {
    bytes32 outArg0;
}

struct TornadoCash$NullifierHashesFunctionOutputs {
    bool outArg0;
}

struct TornadoCash$OperatorFunctionOutputs {
    address outArg0;
}

struct TornadoCash$RootsFunctionInputs {
    uint256 outArg0;
}

struct TornadoCash$RootsFunctionOutputs {
    bytes32 outArg0;
}

struct TornadoCash$UpdateVerifierFunctionInputs {
    address _newVerifier;
}

struct TornadoCash$VerifierFunctionOutputs {
    address outArg0;
}

struct TornadoCash$WithdrawFunctionInputs {
    bytes _proof;
    bytes32 _root;
    bytes32 _nullifierHash;
    address _recipient;
    address _relayer;
    uint256 _fee;
    uint256 _refund;
}

struct TornadoCash$ZerosFunctionInputs {
    uint256 outArg0;
}

struct TornadoCash$ZerosFunctionOutputs {
    bytes32 outArg0;
}

struct TornadoCash$DepositEventParams {
    bytes32 commitment;
    uint32 leafIndex;
    uint256 timestamp;
}

struct TornadoCash$WithdrawalEventParams {
    address to;
    bytes32 nullifierHash;
    address relayer;
    uint256 fee;
}

abstract contract TornadoCash$OnDepositEvent {
    function onDepositEvent(EventContext memory ctx, TornadoCash$DepositEventParams memory inputs) virtual external;

    function triggerOnDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes32(0xa945e51eec50ab98c161376f0db4cf2aeba3ec92755fe2fcd388bdbbb80ff196),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositEvent.selector
        });
    }
}

abstract contract TornadoCash$OnWithdrawalEvent {
    function onWithdrawalEvent(EventContext memory ctx, TornadoCash$WithdrawalEventParams memory inputs) virtual external;

    function triggerOnWithdrawalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes32(0xe9e508bad6d4c3227e881ca19068f099da81b5164dd6d62b2eaf1e8bc6c34931),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawalEvent.selector
        });
    }
}

abstract contract TornadoCash$OnFieldSizeFunction {
    function onFieldSizeFunction(FunctionContext memory ctx, TornadoCash$FieldSizeFunctionOutputs memory outputs) virtual external;

    function triggerOnFieldSizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x414a37ba),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFieldSizeFunction.selector
        });
    }
}

abstract contract TornadoCash$PreFieldSizeFunction {
    function preFieldSizeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFieldSizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x414a37ba),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFieldSizeFunction.selector
        });
    }
}

abstract contract TornadoCash$OnRootHistorySizeFunction {
    function onRootHistorySizeFunction(FunctionContext memory ctx, TornadoCash$RootHistorySizeFunctionOutputs memory outputs) virtual external;

    function triggerOnRootHistorySizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xcd87a3b4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRootHistorySizeFunction.selector
        });
    }
}

abstract contract TornadoCash$PreRootHistorySizeFunction {
    function preRootHistorySizeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRootHistorySizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xcd87a3b4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRootHistorySizeFunction.selector
        });
    }
}

abstract contract TornadoCash$OnZeroValueFunction {
    function onZeroValueFunction(FunctionContext memory ctx, TornadoCash$ZeroValueFunctionOutputs memory outputs) virtual external;

    function triggerOnZeroValueFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xec732959),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onZeroValueFunction.selector
        });
    }
}

abstract contract TornadoCash$PreZeroValueFunction {
    function preZeroValueFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreZeroValueFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xec732959),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preZeroValueFunction.selector
        });
    }
}

abstract contract TornadoCash$OnChangeOperatorFunction {
    function onChangeOperatorFunction(FunctionContext memory ctx, TornadoCash$ChangeOperatorFunctionInputs memory inputs) virtual external;

    function triggerOnChangeOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x06394c9b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onChangeOperatorFunction.selector
        });
    }
}

abstract contract TornadoCash$PreChangeOperatorFunction {
    function preChangeOperatorFunction(PreFunctionContext memory ctx, TornadoCash$ChangeOperatorFunctionInputs memory inputs) virtual external;

    function triggerPreChangeOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x06394c9b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preChangeOperatorFunction.selector
        });
    }
}

abstract contract TornadoCash$OnCommitmentsFunction {
    function onCommitmentsFunction(FunctionContext memory ctx, TornadoCash$CommitmentsFunctionInputs memory inputs, TornadoCash$CommitmentsFunctionOutputs memory outputs) virtual external;

    function triggerOnCommitmentsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x839df945),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCommitmentsFunction.selector
        });
    }
}

abstract contract TornadoCash$PreCommitmentsFunction {
    function preCommitmentsFunction(PreFunctionContext memory ctx, TornadoCash$CommitmentsFunctionInputs memory inputs) virtual external;

    function triggerPreCommitmentsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x839df945),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCommitmentsFunction.selector
        });
    }
}

abstract contract TornadoCash$OnCurrentRootIndexFunction {
    function onCurrentRootIndexFunction(FunctionContext memory ctx, TornadoCash$CurrentRootIndexFunctionOutputs memory outputs) virtual external;

    function triggerOnCurrentRootIndexFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x90eeb02b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCurrentRootIndexFunction.selector
        });
    }
}

abstract contract TornadoCash$PreCurrentRootIndexFunction {
    function preCurrentRootIndexFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCurrentRootIndexFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x90eeb02b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCurrentRootIndexFunction.selector
        });
    }
}

abstract contract TornadoCash$OnDenominationFunction {
    function onDenominationFunction(FunctionContext memory ctx, TornadoCash$DenominationFunctionOutputs memory outputs) virtual external;

    function triggerOnDenominationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x8bca6d16),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDenominationFunction.selector
        });
    }
}

abstract contract TornadoCash$PreDenominationFunction {
    function preDenominationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDenominationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x8bca6d16),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDenominationFunction.selector
        });
    }
}

abstract contract TornadoCash$OnDepositFunction {
    function onDepositFunction(FunctionContext memory ctx, TornadoCash$DepositFunctionInputs memory inputs) virtual external;

    function triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xb214faa5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositFunction.selector
        });
    }
}

abstract contract TornadoCash$PreDepositFunction {
    function preDepositFunction(PreFunctionContext memory ctx, TornadoCash$DepositFunctionInputs memory inputs) virtual external;

    function triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xb214faa5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositFunction.selector
        });
    }
}

abstract contract TornadoCash$OnFilledSubtreesFunction {
    function onFilledSubtreesFunction(FunctionContext memory ctx, TornadoCash$FilledSubtreesFunctionInputs memory inputs, TornadoCash$FilledSubtreesFunctionOutputs memory outputs) virtual external;

    function triggerOnFilledSubtreesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xf178e47c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFilledSubtreesFunction.selector
        });
    }
}

abstract contract TornadoCash$PreFilledSubtreesFunction {
    function preFilledSubtreesFunction(PreFunctionContext memory ctx, TornadoCash$FilledSubtreesFunctionInputs memory inputs) virtual external;

    function triggerPreFilledSubtreesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xf178e47c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFilledSubtreesFunction.selector
        });
    }
}

abstract contract TornadoCash$OnFinishMigrationFunction {
    function onFinishMigrationFunction(FunctionContext memory ctx) virtual external;

    function triggerOnFinishMigrationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x88d761f2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFinishMigrationFunction.selector
        });
    }
}

abstract contract TornadoCash$PreFinishMigrationFunction {
    function preFinishMigrationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFinishMigrationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x88d761f2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFinishMigrationFunction.selector
        });
    }
}

abstract contract TornadoCash$OnGetLastRootFunction {
    function onGetLastRootFunction(FunctionContext memory ctx, TornadoCash$GetLastRootFunctionOutputs memory outputs) virtual external;

    function triggerOnGetLastRootFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xba70f757),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetLastRootFunction.selector
        });
    }
}

abstract contract TornadoCash$PreGetLastRootFunction {
    function preGetLastRootFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetLastRootFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xba70f757),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetLastRootFunction.selector
        });
    }
}

abstract contract TornadoCash$OnHashLeftRightFunction {
    function onHashLeftRightFunction(FunctionContext memory ctx, TornadoCash$HashLeftRightFunctionInputs memory inputs, TornadoCash$HashLeftRightFunctionOutputs memory outputs) virtual external;

    function triggerOnHashLeftRightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x38bf282e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHashLeftRightFunction.selector
        });
    }
}

abstract contract TornadoCash$PreHashLeftRightFunction {
    function preHashLeftRightFunction(PreFunctionContext memory ctx, TornadoCash$HashLeftRightFunctionInputs memory inputs) virtual external;

    function triggerPreHashLeftRightFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x38bf282e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHashLeftRightFunction.selector
        });
    }
}

abstract contract TornadoCash$OnInitializeTreeForMigrationFunction {
    function onInitializeTreeForMigrationFunction(FunctionContext memory ctx, TornadoCash$InitializeTreeForMigrationFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeTreeForMigrationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x6ba355aa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeTreeForMigrationFunction.selector
        });
    }
}

abstract contract TornadoCash$PreInitializeTreeForMigrationFunction {
    function preInitializeTreeForMigrationFunction(PreFunctionContext memory ctx, TornadoCash$InitializeTreeForMigrationFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeTreeForMigrationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x6ba355aa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeTreeForMigrationFunction.selector
        });
    }
}

abstract contract TornadoCash$OnIsKnownRootFunction {
    function onIsKnownRootFunction(FunctionContext memory ctx, TornadoCash$IsKnownRootFunctionInputs memory inputs, TornadoCash$IsKnownRootFunctionOutputs memory outputs) virtual external;

    function triggerOnIsKnownRootFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x6d9833e3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsKnownRootFunction.selector
        });
    }
}

abstract contract TornadoCash$PreIsKnownRootFunction {
    function preIsKnownRootFunction(PreFunctionContext memory ctx, TornadoCash$IsKnownRootFunctionInputs memory inputs) virtual external;

    function triggerPreIsKnownRootFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x6d9833e3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsKnownRootFunction.selector
        });
    }
}

abstract contract TornadoCash$OnIsMigratedFunction {
    function onIsMigratedFunction(FunctionContext memory ctx, TornadoCash$IsMigratedFunctionOutputs memory outputs) virtual external;

    function triggerOnIsMigratedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xb06faf62),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsMigratedFunction.selector
        });
    }
}

abstract contract TornadoCash$PreIsMigratedFunction {
    function preIsMigratedFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreIsMigratedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xb06faf62),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsMigratedFunction.selector
        });
    }
}

abstract contract TornadoCash$OnIsSpentFunction {
    function onIsSpentFunction(FunctionContext memory ctx, TornadoCash$IsSpentFunctionInputs memory inputs, TornadoCash$IsSpentFunctionOutputs memory outputs) virtual external;

    function triggerOnIsSpentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xe5285dcc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsSpentFunction.selector
        });
    }
}

abstract contract TornadoCash$PreIsSpentFunction {
    function preIsSpentFunction(PreFunctionContext memory ctx, TornadoCash$IsSpentFunctionInputs memory inputs) virtual external;

    function triggerPreIsSpentFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xe5285dcc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsSpentFunction.selector
        });
    }
}

abstract contract TornadoCash$OnIsSpentArrayFunction {
    function onIsSpentArrayFunction(FunctionContext memory ctx, TornadoCash$IsSpentArrayFunctionInputs memory inputs, TornadoCash$IsSpentArrayFunctionOutputs memory outputs) virtual external;

    function triggerOnIsSpentArrayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x9fa12d0b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsSpentArrayFunction.selector
        });
    }
}

abstract contract TornadoCash$PreIsSpentArrayFunction {
    function preIsSpentArrayFunction(PreFunctionContext memory ctx, TornadoCash$IsSpentArrayFunctionInputs memory inputs) virtual external;

    function triggerPreIsSpentArrayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x9fa12d0b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsSpentArrayFunction.selector
        });
    }
}

abstract contract TornadoCash$OnLevelsFunction {
    function onLevelsFunction(FunctionContext memory ctx, TornadoCash$LevelsFunctionOutputs memory outputs) virtual external;

    function triggerOnLevelsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x4ecf518b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onLevelsFunction.selector
        });
    }
}

abstract contract TornadoCash$PreLevelsFunction {
    function preLevelsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreLevelsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x4ecf518b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preLevelsFunction.selector
        });
    }
}

abstract contract TornadoCash$OnMigrateStateFunction {
    function onMigrateStateFunction(FunctionContext memory ctx, TornadoCash$MigrateStateFunctionInputs memory inputs) virtual external;

    function triggerOnMigrateStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x916710aa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMigrateStateFunction.selector
        });
    }
}

abstract contract TornadoCash$PreMigrateStateFunction {
    function preMigrateStateFunction(PreFunctionContext memory ctx, TornadoCash$MigrateStateFunctionInputs memory inputs) virtual external;

    function triggerPreMigrateStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x916710aa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMigrateStateFunction.selector
        });
    }
}

abstract contract TornadoCash$OnNextIndexFunction {
    function onNextIndexFunction(FunctionContext memory ctx, TornadoCash$NextIndexFunctionOutputs memory outputs) virtual external;

    function triggerOnNextIndexFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xfc7e9c6f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNextIndexFunction.selector
        });
    }
}

abstract contract TornadoCash$PreNextIndexFunction {
    function preNextIndexFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNextIndexFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xfc7e9c6f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNextIndexFunction.selector
        });
    }
}

abstract contract TornadoCash$OnNullifierHashesFunction {
    function onNullifierHashesFunction(FunctionContext memory ctx, TornadoCash$NullifierHashesFunctionInputs memory inputs, TornadoCash$NullifierHashesFunctionOutputs memory outputs) virtual external;

    function triggerOnNullifierHashesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x17cc915c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNullifierHashesFunction.selector
        });
    }
}

abstract contract TornadoCash$PreNullifierHashesFunction {
    function preNullifierHashesFunction(PreFunctionContext memory ctx, TornadoCash$NullifierHashesFunctionInputs memory inputs) virtual external;

    function triggerPreNullifierHashesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x17cc915c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNullifierHashesFunction.selector
        });
    }
}

abstract contract TornadoCash$OnOperatorFunction {
    function onOperatorFunction(FunctionContext memory ctx, TornadoCash$OperatorFunctionOutputs memory outputs) virtual external;

    function triggerOnOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x570ca735),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOperatorFunction.selector
        });
    }
}

abstract contract TornadoCash$PreOperatorFunction {
    function preOperatorFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x570ca735),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOperatorFunction.selector
        });
    }
}

abstract contract TornadoCash$OnRootsFunction {
    function onRootsFunction(FunctionContext memory ctx, TornadoCash$RootsFunctionInputs memory inputs, TornadoCash$RootsFunctionOutputs memory outputs) virtual external;

    function triggerOnRootsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xc2b40ae4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRootsFunction.selector
        });
    }
}

abstract contract TornadoCash$PreRootsFunction {
    function preRootsFunction(PreFunctionContext memory ctx, TornadoCash$RootsFunctionInputs memory inputs) virtual external;

    function triggerPreRootsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xc2b40ae4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRootsFunction.selector
        });
    }
}

abstract contract TornadoCash$OnUpdateVerifierFunction {
    function onUpdateVerifierFunction(FunctionContext memory ctx, TornadoCash$UpdateVerifierFunctionInputs memory inputs) virtual external;

    function triggerOnUpdateVerifierFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x97fc007c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpdateVerifierFunction.selector
        });
    }
}

abstract contract TornadoCash$PreUpdateVerifierFunction {
    function preUpdateVerifierFunction(PreFunctionContext memory ctx, TornadoCash$UpdateVerifierFunctionInputs memory inputs) virtual external;

    function triggerPreUpdateVerifierFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x97fc007c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpdateVerifierFunction.selector
        });
    }
}

abstract contract TornadoCash$OnVerifierFunction {
    function onVerifierFunction(FunctionContext memory ctx, TornadoCash$VerifierFunctionOutputs memory outputs) virtual external;

    function triggerOnVerifierFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x2b7ac3f3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVerifierFunction.selector
        });
    }
}

abstract contract TornadoCash$PreVerifierFunction {
    function preVerifierFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVerifierFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x2b7ac3f3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVerifierFunction.selector
        });
    }
}

abstract contract TornadoCash$OnWithdrawFunction {
    function onWithdrawFunction(FunctionContext memory ctx, TornadoCash$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerOnWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x21a0adb6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFunction.selector
        });
    }
}

abstract contract TornadoCash$PreWithdrawFunction {
    function preWithdrawFunction(PreFunctionContext memory ctx, TornadoCash$WithdrawFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0x21a0adb6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFunction.selector
        });
    }
}

abstract contract TornadoCash$OnZerosFunction {
    function onZerosFunction(FunctionContext memory ctx, TornadoCash$ZerosFunctionInputs memory inputs, TornadoCash$ZerosFunctionOutputs memory outputs) virtual external;

    function triggerOnZerosFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xe8295588),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onZerosFunction.selector
        });
    }
}

abstract contract TornadoCash$PreZerosFunction {
    function preZerosFunction(PreFunctionContext memory ctx, TornadoCash$ZerosFunctionInputs memory inputs) virtual external;

    function triggerPreZerosFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TornadoCash",
            selector: bytes4(0xe8295588),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preZerosFunction.selector
        });
    }
}

contract TornadoCash$EmitAllEvents is
  TornadoCash$OnDepositEvent,
TornadoCash$OnWithdrawalEvent
{
  event Deposit(bytes32 commitment, uint32 leafIndex, uint256 timestamp);
event Withdrawal(address to, bytes32 nullifierHash, address relayer, uint256 fee);

  function onDepositEvent(EventContext memory ctx, TornadoCash$DepositEventParams memory inputs) virtual external override {
    emit Deposit(inputs.commitment, inputs.leafIndex, inputs.timestamp);
  }
function onWithdrawalEvent(EventContext memory ctx, TornadoCash$WithdrawalEventParams memory inputs) virtual external override {
    emit Withdrawal(inputs.to, inputs.nullifierHash, inputs.relayer, inputs.fee);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](2);
    triggers[0] = this.triggerOnDepositEvent();
    triggers[1] = this.triggerOnWithdrawalEvent();
    return triggers;
  }
}