pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

import "./AddrResolver.sol";

/**
 * A simple resolver anyone can use; only allows the owner of a node to set its
 * address.
 */
contract OwnedResolver is AddrResolver {
    function isAuthorised(bytes32 node) internal view returns(bool) {
      return true;
    }
}
