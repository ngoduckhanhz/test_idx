// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.2 <0.9.0;

import {IUniswapV2Factory, IUniswapV3Factory, IUniswapV3Pool, IUniswapV2Pair} from "./interfaces/Uniswap/UniswapInterfaces.sol";

import {IDODOPool, IDODOPoolFactory} from "./interfaces/DODO/DODOV2Interfaces.sol";

import {ICLPoolConstants, ICLFactory} from "./interfaces/Aerodrome/AerodromeSlipstream.sol";

import {safeReturnAddress} from "./utils/AddressUtils.sol";

/// @title A collection of helper functions to deal with common DEXs.
/// @author Tal Vaizman
/// @notice Resolves known addresses of factories and pools.
/// @notice Chain agnostic.
contract DexUtils {
    mapping(uint256 => address) internal uniV2Factories;
    mapping(uint256 => address) internal uniV3Factories;
    mapping(uint256 => address) internal pancakeSwapV2Factories;
    mapping(uint256 => address) internal pancakeSwapV3Factories;
    mapping(uint256 => address) internal sushiSwapV2Factories;
    mapping(uint256 => address) internal sushiSwapV3Factories;
    mapping(uint256 => address) internal shibaSwapV2Factories;
    mapping(uint256 => address) internal baseXFactories;
    mapping(uint256 => address) internal baseSwapFactories;
    mapping(uint256 => address) internal rocketSwapFactories;
    mapping(uint256 => address) internal aerodromeFactories;
    mapping(uint256 => address) internal aerodromeSlipstreamFactories;
    mapping(uint256 => address) internal infusionFactories;
    mapping(uint256 => address) internal maverickV1Factories;
    mapping(uint256 => address) internal maverickV2Factories;
    mapping(uint256 => address) internal swaapV2Vaults;
    mapping(uint256 => address) internal balancerV2Vaults;
    mapping(uint256 => address) internal dodoV2DppFactories;
    mapping(uint256 => address) internal dodoV2DspFactories;
    mapping(uint256 => address) internal dodoV2DvmFactories;
    mapping(uint256 => address) internal ringSwapFactories;
    mapping(uint256 => address) internal croDefiSwapFactories;
    mapping(uint256 => address) internal dxSwapFactories;
    mapping(uint256 => address) internal squadSwapFactories;
    mapping(uint256 => address) internal trebleSwapV2Factories;
    mapping(uint256 => address) internal sharkSwapFactories;
    mapping(uint256 => address) internal alienBaseFactories;
    mapping(uint256 => address) internal dackieSwapFactories;
    mapping(uint256 => address) internal swapBasedFactories;
    mapping(uint256 => address) internal hydrexFactories;
    mapping(uint256 => address) internal trebleSwapFactories;

    constructor() {
        uniV3Factories[1] = 0x1F98431c8aD98523631AE4a59f267346ea31F984;
        uniV3Factories[8453] = 0x33128a8fC17869897dcE68Ed026d694621f6FDfD;
        uniV3Factories[57073] = 0x640887A9ba3A9C53Ed27D0F7e8246A4F933f3424;
        uniV3Factories[7777777] = 0x7145F8aeef1f6510E92164038E1B6F8cB2c42Cbb;
        uniV3Factories[480] = 0x7a5028BDa40e7B173C278C5342087826455ea25a;
        uniV3Factories[130] = 0x1F98400000000000000000000000000000000003;
        uniV3Factories[1868] = 0x42aE7Ec7ff020412639d443E245D936429Fbe717;

        uniV2Factories[1] = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
        uniV2Factories[8453] = 0x8909Dc15e40173Ff4699343b6eB8132c65e18eC6;
        uniV2Factories[7777777] = 0x0F797dC7efaEA995bB916f268D919d0a1950eE3C;
        uniV2Factories[480] = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
        uniV2Factories[130] = 0x1F98400000000000000000000000000000000002;
        uniV2Factories[1868] = 0x97FeBbC2AdBD5644ba22736E962564B23F5828CE;

        pancakeSwapV2Factories[1] = 0x1097053Fd2ea711dad45caCcc45EfF7548fCB362;
        pancakeSwapV2Factories[
            8453
        ] = 0x02a84c1b3BBD7401a5f7fa98a384EBC70bB5749E;

        pancakeSwapV3Factories[1] = 0x0BFbCF9fa4f9C56B0F40a671Ad40E0805A091865;
        pancakeSwapV3Factories[
            8453
        ] = 0x0BFbCF9fa4f9C56B0F40a671Ad40E0805A091865;

        sushiSwapV2Factories[1] = 0xC0AEe478e3658e2610c5F7A4A2E1777cE9e4f2Ac;
        sushiSwapV2Factories[8453] = 0x71524B4f93c58fcbF659783284E38825f0622859;

        sushiSwapV3Factories[1] = 0xbACEB8eC6b9355Dfc0269C18bac9d6E2Bdc29C4F;
        sushiSwapV3Factories[8453] = 0xc35DADB65012eC5796536bD9864eD8773aBc74C4;

        shibaSwapV2Factories[1] = 0x115934131916C8b277DD010Ee02de363c09d037c;

        baseXFactories[8453] = 0x38015D05f4fEC8AFe15D7cc0386a126574e8077B;

        baseSwapFactories[8453] = 0xFDa619b6d20975be80A10332cD39b9a4b0FAa8BB;

        rocketSwapFactories[8453] = 0x1B8128c3A1B7D20053D10763ff02466ca7FF99FC;

        aerodromeFactories[8453] = 0x420DD381b31aEf6683db6B902084cB0FFECe40Da;
        aerodromeSlipstreamFactories[
            8453
        ] = 0x5e7BB104d84c7CB9B682AaC2F3d509f5F406809A;

        infusionFactories[8453] = 0x2D9A3a2bd6400eE28d770c7254cA840c82faf23f;

        maverickV1Factories[1] = 0xEb6625D65a0553c9dBc64449e56abFe519bd9c9B;
        maverickV1Factories[8453] = 0xB2855783a346735e4AAe0c1eb894DEf861Fa9b45;

        maverickV2Factories[1] = 0x0A7e848Aca42d879EF06507Fca0E7b33A0a63c1e;
        maverickV2Factories[8453] = 0x0A7e848Aca42d879EF06507Fca0E7b33A0a63c1e;

        swaapV2Vaults[1] = 0xd315a9C38eC871068FEC378E4Ce78AF528C76293;
        swaapV2Vaults[8453] = 0x03C01Acae3D0173a93d819efDc832C7C4F153B06;

        dodoV2DppFactories[1] = 0x5336edE8F971339F6c0e304c66ba16F1296A2Fbe;
        dodoV2DppFactories[8453] = 0xc0F9553Df63De5a97Fe64422c8578D0657C360f7;

        dodoV2DspFactories[1] = 0x6fdDB76c93299D985f4d3FC7ac468F9A168577A4;
        dodoV2DspFactories[8453] = 0x200D866Edf41070DE251Ef92715a6Ea825A5Eb80;

        dodoV2DvmFactories[1] = 0x72d220cE168C4f361dD4deE5D826a01AD8598f6C;
        dodoV2DvmFactories[8453] = 0x0226fCE8c969604C3A0AD19c37d1FAFac73e13c2;

        ringSwapFactories[1] = 0xeb2A625B704d73e82946D8d026E1F588Eed06416;
        ringSwapFactories[8453] = 0x9BfFC3B30D6659e3D84754cc38865B3D60B4980E;

        croDefiSwapFactories[1] = 0x9DEB29c9a4c7A88a3C0257393b7f3335338D9A9D;

        dxSwapFactories[1] = 0xd34971BaB6E5E356fd250715F5dE0492BB070452;

        squadSwapFactories[8453] = 0xba34aA640b8Be02A439221BCbea1f48c1035EEF9;

        trebleSwapV2Factories[
            8453
        ] = 0x6Ae1d7EfA0640b6A2FA393d1EFf21fC38a08cd8f;

        sharkSwapFactories[8453] = 0x57592D44eb60011500961EF177BFf8D8691D5a8B;

        alienBaseFactories[8453] = 0x0Fd83557b2be93617c9C1C1B6fd549401C74558C;

        balancerV2Vaults[8453] = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;
        balancerV2Vaults[1] = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;

        dackieSwapFactories[8453] = 0x3D237AC6D2f425D2E890Cc99198818cc1FA48870;

        swapBasedFactories[8453] = 0xB5A0f8BAc329E0ed1aC0a8a65b84a7CD76e1a1Ad;

        hydrexFactories[8453] = 0x36077D39cdC65E1e3FB65810430E5b2c4D5fA29E;

        trebleSwapFactories[8453] = 0xAC900f12fB25d514e3ccFE8572B153A9991cA4e7;
    }

    /// @notice Resolves the official Uniswap V2 Factory's address.
    /// @return The address of Uniswap V2 Factory for the current chain.
    function getUniswapV2Factory() public view returns (address) {
        return safeReturnAddress(uniV2Factories[block.chainid]);
    }

    /// @notice Resolves the official Uniswap V3 Factory's address.
    /// @return The address of Uniswap V3 Factory for the current chain.
    function getUniswapV3Factory() public view returns (address) {
        return safeReturnAddress(uniV3Factories[block.chainid]);
    }

    /// @notice Resolves the official PancakeSwap V2 Factory's address.
    /// @return The address of PancakeSwap V2 Factory for the current chain.
    function getPancakeSwapV2Factory() public view returns (address) {
        return safeReturnAddress(pancakeSwapV2Factories[block.chainid]);
    }

    /// @notice Resolves the official PancakeSwap V3 Factory's address.
    /// @return The address of PancakeSwap V3 Factory for the current chain.
    function getPancakeSwapV3Factory() public view returns (address) {
        return safeReturnAddress(pancakeSwapV3Factories[block.chainid]);
    }

    /// @notice Resolves the official SushiSwap V2 Factory's address.
    /// @return The address of SushiSwap V2 Factory for the current chain.
    function getSushiSwapV2Factory() public view returns (address) {
        return safeReturnAddress(sushiSwapV2Factories[block.chainid]);
    }

    /// @notice Resolves the official SushiSwap V3 Factory's address.
    /// @return The address of SushiSwap V3 Factory for the current chain.
    function getSushiSwapV3Factory() public view returns (address) {
        return safeReturnAddress(sushiSwapV3Factories[block.chainid]);
    }

    /// @notice Resolves the official ShibaSwap V2 Factory's address.
    /// @return The address of ShibaSwap V2 Factory for the current chain.
    function getShibaSwapV2Factory() public view returns (address) {
        return safeReturnAddress(shibaSwapV2Factories[block.chainid]);
    }

    /// @notice Resolves the official BaseX Factory's address.
    /// @return The address of BaseX Factory for the current chain.
    function getBaseXFactory() public view returns (address) {
        return safeReturnAddress(baseXFactories[block.chainid]);
    }

    /// @notice Resolves the official RocketSwap Factory's address.
    /// @return The address of RocketSwap Factory for the current chain.
    function getRocketSwapFactory() public view returns (address) {
        return safeReturnAddress(rocketSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official Aerodrome Factory's address.
    /// @return The address of Aerodrome Factory for the current chain.
    function getAerodromeFactory() public view returns (address) {
        return safeReturnAddress(aerodromeFactories[block.chainid]);
    }

    /// @notice Resolves the official Aerodrome Slipstream Factory's address.
    /// @return The address of Aerodrome Slipstream Factory for the current chain.
    function getAerodromeSlipstreamFactory() public view returns (address) {
        return safeReturnAddress(aerodromeSlipstreamFactories[block.chainid]);
    }

    /// @notice Resolves the official Infusion Factory's address.
    /// @return The address of Infusion Factory for the current chain.
    function getInfusionFactory() public view returns (address) {
        return safeReturnAddress(infusionFactories[block.chainid]);
    }

    /// @notice Resolves the official Maverick V1 Factory's address.
    /// @return The address of Maverick V1 Factory for the current chain.
    function getMaverickV1Factory() public view returns (address) {
        return safeReturnAddress(maverickV1Factories[block.chainid]);
    }

    /// @notice Resolves the official Maverick V2 Factory's address.
    /// @return The address of Maverick V2 Factory for the current chain.
    function getMaverickV2Factory() public view returns (address) {
        return safeReturnAddress(maverickV2Factories[block.chainid]);
    }

    /// @notice Resolves the official Swaap V2 Vault's address.
    /// @return The address of Swaap V2 Vault for the current chain.
    function getSwaapV2Vault() public view returns (address) {
        return safeReturnAddress(swaapV2Vaults[block.chainid]);
    }

    /// @notice Resolves the official BaseSwap Factory's address.
    /// @return The address of BaseSwap Factory for the current chain.
    function getBaseSwapFactory() public view returns (address) {
        return safeReturnAddress(baseSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official Dodo V2 DPP Factory's address.
    /// @return The address of Dodo V2 DPP Factory for the current chain.
    function getDodoV2DppFactory() public view returns (address) {
        return safeReturnAddress(dodoV2DppFactories[block.chainid]);
    }

    /// @notice Resolves the official Dodo V2 DSP Factory's address.
    /// @return The address of Dodo V2 DSP Factory for the current chain.
    function getDodoV2DspFactory() public view returns (address) {
        return safeReturnAddress(dodoV2DspFactories[block.chainid]);
    }

    /// @notice Resolves the official Dodo V2 DVM Factory's address.
    /// @return The address of Dodo V2 DVM Factory for the current chain.
    function getDodoV2DvmFactory() public view returns (address) {
        return safeReturnAddress(dodoV2DvmFactories[block.chainid]);
    }

    /// @notice Resolves the official RingSwap Factory's address.
    /// @return The address of RingSwap Factory for the current chain.
    function getRingSwapFactory() public view returns (address) {
        return safeReturnAddress(ringSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official CroDefiSwap Factory's address.
    /// @return The address of CroDefiSwap Factory for the current chain.
    function getCroDefiSwapFactory() public view returns (address) {
        return safeReturnAddress(croDefiSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official DXSwap Factory's address.
    /// @return The address of DXSwap Factory for the current chain.
    function getDXSwapFactory() public view returns (address) {
        return safeReturnAddress(dxSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official SquadSwap Factory's address.
    /// @return The address of SquadSwap Factory for the current chain.
    function getSquadSwapFactory() public view returns (address) {
        return safeReturnAddress(squadSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official TrebleSwap V2 Factory's address.
    /// @return The address of TrebleSwap V2 Factory for the current chain.
    function getTrebleSwapV2Factory() public view returns (address) {
        return safeReturnAddress(trebleSwapV2Factories[block.chainid]);
    }

    /// @notice Resolves the official SharkSwap Factory's address.
    /// @return The address of SharkSwap Factory for the current chain.
    function getSharkSwapFactory() public view returns (address) {
        return safeReturnAddress(sharkSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official AlienBaseSwap Factory's address.
    /// @return The address of AlienBaseSwap Factory for the current chain.
    function getAlienBaseFactory() public view returns (address) {
        return safeReturnAddress(alienBaseFactories[block.chainid]);
    }

    /// @notice Resolves the official DackieSwap Factory's address.
    /// @return The address of DackieSwap Factory for the current chain.
    function getDackieSwapFactory() public view returns (address) {
        return safeReturnAddress(dackieSwapFactories[block.chainid]);
    }

    /// @notice Resolves the official SwapBased Factory's address.
    /// @return The address of SwapBased Factory for the current chain.
    function getSwapBasedFactory() public view returns (address) {
        return safeReturnAddress(swapBasedFactories[block.chainid]);
    }

    /// @notice Resolves the official Balancer V2 Vault's address.
    /// @return The address of Balancer V2 Vault for the current chain.
    function getBalancerV2Vault() public view returns (address) {
        return safeReturnAddress(balancerV2Vaults[block.chainid]);
    }

    /// @notice Resolves the official Hydrex Factory's address.
    /// @return The address of Hydrex Factory for the current chain.
    function getHydrexFactory() public view returns (address) {
        return safeReturnAddress(hydrexFactories[block.chainid]);
    }

    /// @notice Resolves the official TrebleSwap Factory's address.
    /// @return The address of TrebleSwap Factory for the current chain.
    function getTrebleSwapFactory() public view returns (address) {
        return safeReturnAddress(trebleSwapFactories[block.chainid]);
    }

    /// @notice Gets a Uniswap V2 pair from a factory for token0 and token1.
    /// @param token0 The token0 address.
    /// @param token1 The token1 address.
    /// @param factory The Uniswap V2 Factory.
    /// @return The pool's address or `address(0)` in case the factory doesn't exist.
    function getUniswapV2Pool(
        address token0,
        address token1,
        address factory
    ) public view returns (address) {
        if (factory == address(0)) {
            return address(0);
        }
        return IUniswapV2Factory(factory).getPair(token0, token1);
    }

    /// @notice Gets a Uniswap V3 pair from a factory for token0 and token1. Will return the most liquid pool.
    /// @param token0 The token0 address.
    /// @param token1 The token1 address.
    /// @param factory The Uniswap V3 Factory.
    /// @return The pool's address or `address(0)` in case the factory doesn't exist.
    function getUniswapV3Pool(
        address token0,
        address token1,
        address factory
    ) public returns (address) {
        if (factory == address(0)) {
            return address(0);
        }
        address p500 = getUniswapV3Pool(token0, token1, 500, factory);
        address p100 = getUniswapV3Pool(token0, token1, 100, factory);
        address p10000 = getUniswapV3Pool(token0, token1, 10000, factory);
        address p3000 = getUniswapV3Pool(token0, token1, 3000, factory);
        uint128 p500Liquidity = p500 == address(0)
            ? 0
            : IUniswapV3Pool(p500).liquidity();
        uint128 p100Liquidity = p100 == address(0)
            ? 0
            : IUniswapV3Pool(p100).liquidity();
        uint128 p10000Liquidity = p10000 == address(0)
            ? 0
            : IUniswapV3Pool(p10000).liquidity();
        uint128 p3000Liquidity = p3000 == address(0)
            ? 0
            : IUniswapV3Pool(p3000).liquidity();
        if (
            p500Liquidity >= p100Liquidity &&
            p500Liquidity >= p10000Liquidity &&
            p500Liquidity >= p3000Liquidity
        ) {
            return p500;
        }
        if (
            p100Liquidity >= p500Liquidity &&
            p100Liquidity >= p10000Liquidity &&
            p100Liquidity >= p3000Liquidity
        ) {
            return p100;
        }
        if (
            p10000Liquidity >= p500Liquidity &&
            p10000Liquidity >= p100Liquidity &&
            p10000Liquidity >= p3000Liquidity
        ) {
            return p10000;
        }
        return p3000;
    }

    /// @notice Gets a Uniswap V3 pool from a factory for token0, token1 and a fee.
    /// @param token0 The token0 address.
    /// @param token1 The token1 address.
    /// @param fee The pool's fee.
    /// @param factory The Uniswap V3 Factory.
    /// @return The pool's address.
    function getUniswapV3Pool(
        address token0,
        address token1,
        uint24 fee,
        address factory
    ) public view returns (address) {
        if (factory == address(0)) {
            return address(0);
        }
        return IUniswapV3Factory(factory).getPool(token0, token1, fee);
    }

    /// @notice Gets a Uniswap V2 pair's token0 and token1.
    /// @param pair The pair's address.
    /// @return The token0 address.
    /// @return The token1 address.
    function getUniswapV2PairMetadata(
        address pair
    ) public returns (address, address) {
        address token0 = IUniswapV2Pair(pair).token0();
        address token1 = IUniswapV2Pair(pair).token1();
        return (token0, token1);
    }

    /// @notice Gets a Uniswap V3 pool's token0, token1 and fee.
    /// @param pool The pool's address.
    /// @return The token0 address.
    /// @return The token1 address.
    /// @return The pool's fee.
    function getUniswapV3PoolMetadata(
        address pool
    ) public returns (address, address, uint24) {
        address token0 = IUniswapV3Pool(pool).token0();
        address token1 = IUniswapV3Pool(pool).token1();
        uint24 fee = IUniswapV3Pool(pool).fee();
        return (token0, token1, fee);
    }

    /// @notice Gets a Aerodrome Slipstream pool's token0 and token1.
    /// @param pool The pool's address.
    /// @return The token0 address.
    /// @return The token1 address.
    function getAerodromeSlipstreamPoolMetadata(
        address pool
    ) public view returns (address, address) {
        address token0 = ICLPoolConstants(pool).token0();
        address token1 = ICLPoolConstants(pool).token1();
        return (token0, token1);
    }

    /// @notice Given an Aerodrome Slipstream pool and a Factory, check if the pool belongs to the factory.
    /// @param pool The pool's address.
    /// @param factory The factory's address.
    /// @return true if the pool belongs to the factory, false otherwise.
    function checkIfPool(
        address pool,
        address factory
    ) public view returns (bool) {
        if (factory == address(0) || pool == address(0)) {
            return false;
        }
        return ICLFactory(factory).isPool(pool);
    }

    /// @notice Gets a DODO V2 pool's baseToken and quoteToken.
    /// @param pool The pool's address.
    /// @return The baseToken address.
    /// @return The quoteToken address.
    function getDodoV2PoolMetadata(
        address pool
    ) public view returns (address, address) {
        if (pool == address(0)) {
            return (address(0), address(0));
        }
        address baseToken = IDODOPool(pool)._BASE_TOKEN_();
        address quoteToken = IDODOPool(pool)._QUOTE_TOKEN_();
        return (baseToken, quoteToken);
    }

    function checkIfDodoV2PoolWithFactory(
        address pool,
        address factory
    ) public view returns (bool) {
        if (factory == address(0) || pool == address(0)) {
            return false;
        }
        address baseToken = IDODOPool(pool)._BASE_TOKEN_();
        address quoteToken = IDODOPool(pool)._QUOTE_TOKEN_();
        address[] memory pools = IDODOPoolFactory(factory).getDODOPool(
            baseToken,
            quoteToken
        );
        for (uint256 i = 0; i < pools.length; i++) {
            if (pools[i] == pool) {
                return true;
            }
        }
        return false;
    }

    /// @notice Given a DODO V2 pool, check if it's a DPP, DSP or a DVM pool.
    /// @param pool The pool's address.
    /// @return true if the pool is a DODOV2 pool, false otherwise.
    function checkIfDodoV2Pool(address pool) public view returns (bool) {
        if (pool == address(0)) {
            return false;
        }
        address dppFactory = getDodoV2DppFactory();
        address dspFactory = getDodoV2DspFactory();
        address dvmFactory = getDodoV2DvmFactory();
        return
            checkIfDodoV2PoolWithFactory(pool, dppFactory) ||
            checkIfDodoV2PoolWithFactory(pool, dspFactory) ||
            checkIfDodoV2PoolWithFactory(pool, dvmFactory);
    }

    /// @notice Gets the tokens of a Curve pool from their ids.
    /// @param pool The Curve pool's address.
    /// @param bId The bought token's id.
    /// @param sId The sold token's id.
    /// @return The bought token's address.
    /// @return The sold token's address.
    function getCurvePoolToFromTokens(
        address pool,
        int128 bId,
        int128 sId
    ) public returns (address, address) {
        address tokenTo;
        address tokenFrom;
        uint256 boughtId = uint256(uint128(bId));
        uint256 soldId = uint256(uint128(sId));
        bool success;
        bytes memory returnData;
        // Try one variation of the function signature
        (success, returnData) = pool.call(
            abi.encodeWithSignature("coins(uint256)", boughtId)
        );
        if (success) {
            tokenTo = abi.decode(returnData, (address));
            (success, returnData) = pool.call(
                abi.encodeWithSignature("coins(uint256)", soldId)
            );
            if (success) {
                tokenFrom = abi.decode(returnData, (address));
                return (tokenTo, tokenFrom);
            }
        } else {
            // Try another variation of the function signature
            (success, returnData) = pool.call(
                abi.encodeWithSignature("coins(int128)", bId)
            );
            if (success) {
                tokenTo = abi.decode(returnData, (address));
                (success, returnData) = pool.call(
                    abi.encodeWithSignature("coins(int128)", sId)
                );
                if (success) {
                    tokenFrom = abi.decode(returnData, (address));
                    return (tokenTo, tokenFrom);
                }
            }
        }
        // Give up
        return (address(0), address(0));
    }
}
