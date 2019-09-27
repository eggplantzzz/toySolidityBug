pragma solidity ^0.5.8;
pragma experimental ABIEncoderV2;

/* contract AddrResolver is ResolverBase { */
contract AddrResolver {

    struct AddressInfo {
        uint coinType;
        bytes addr;
    }

    mapping(bytes32=>AddressInfo[]) _addresses;

    function addresses(bytes32 node) external view returns(AddressInfo[] memory) {
        return _addresses[node];
    }
}
