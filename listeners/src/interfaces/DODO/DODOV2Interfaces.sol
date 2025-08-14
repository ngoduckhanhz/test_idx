// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.2 < 0.9.0;

interface IDODOPool {
    function _BASE_TOKEN_() external view returns (address);
    function _QUOTE_TOKEN_() external view returns (address);
}

interface IDODOPoolFactory {
    function getDODOPool(address baseToken, address quoteToken) external view returns (address[] memory pools);
}
