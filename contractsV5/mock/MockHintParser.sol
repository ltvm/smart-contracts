pragma solidity 0.5.11;

import "../KyberHintParser.sol";


contract MockHintParser is KyberHintParser {

    mapping(address=>bytes8) public reserveAddressToId;
    mapping(bytes8=>address[]) public reserveIdToAddresses;

    function addReserve(address reserve, bytes8 reserveId) public {
        reserveIdToAddresses[reserveId].push(reserve);
        reserveAddressToId[reserve] = reserveId;
    }

    function convertReserveIdToAddress(bytes8 reserveId)
        internal
        view
        returns (address)
    {
        return reserveIdToAddresses[reserveId][0];
    }
}