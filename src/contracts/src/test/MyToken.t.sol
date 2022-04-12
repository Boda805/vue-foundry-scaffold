// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../../lib/ds-test/src/test.sol";
import "../MyToken.sol";

// Access forge cheat codes such as sign
interface Vm {
    function sign(uint sk, bytes32 digest) external returns (uint8 v, bytes32 r, bytes32 s);
    function addr(uint sk) external returns (address addr);
    function expectRevert(bytes calldata) external;
}

contract MyTokenTest is DSTest {
    MyToken testToken;

    uint256 testPrivateKey;

    Vm vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);

    function setUp() public {
        testToken = new MyToken("TestToken", "TEST", 18, 1000000000000000000);

        testPrivateKey = 15222807529062234565326797468061320288501331115285795045370720053640889535323;
    }

    function testTransfer() public {
        address testAddress = vm.addr(testPrivateKey);

        testToken.approve(address(this), 10);

        testToken.transferFrom(address(this), testAddress, 10);

        uint256 testAddressBalance = testToken.balanceOf(testAddress);

        assertEq(testAddressBalance, 10);
    }
}
