pragma solidity 0.4.18;


import "../OrderBookReserve.sol";


contract MockOrderBookReserve is OrderBookReserve {

    uint public bitmap;

    function MockOrderBookReserve(FeeBurner burner, ERC20 knc, ERC20 token) public
        OrderBookReserve(burner, knc, token)
    {

    }

    function testBindStakes(address maker, int amountTwei) public {
        bindOrderStakes(maker, amountTwei);
    }

    function testHandleStakes(address maker, uint stakeAmountTwei, uint burnAmountTwei) public {
        handleOrderStakes(maker, stakeAmountTwei, burnAmountTwei);
    }
}