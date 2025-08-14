// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {DexTradeData} from "../types/DexTrades.sol";

interface IDexListener {
    /// @custom:index dex_trades_chainid_blocktimestamp_idx BTREE (chainId, blockTimestamp);
    /// @custom:index dex_trades_blocktimestamp_idx BTREE (blockTimestamp);
    event DexTrade(DexTradeData);
}
