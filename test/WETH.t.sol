// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/WETH.sol";

contract WETHTest is Test {
    WETH public weth;
    address public alice = address(0xABC);
    address public bob = address(0xDEF);

    function setUp() public {
        weth = new WETH();
        
        vm.deal(alice, 10 ether);
        vm.deal(bob, 10 ether);
    }


    function testReceiveMint() public {
        vm.prank(alice);
        (bool success, ) = address(weth).call{value: 1 ether}("");
        
        assertTrue(success);
        assertEq(weth.balanceOf(alice), 1 ether);
        assertEq(weth.totalSupply(), 1 ether);
    }


    function testBurn() public {
        vm.startPrank(alice);
        weth.mint{value: 2 ether}();
        
        uint256 balanceBefore = alice.balance;
        weth.burn(1 ether);
        
        assertEq(weth.balanceOf(alice), 1 ether);
        assertEq(alice.balance, balanceBefore + 1 ether);
        vm.stopPrank();
    }


    function testApproveAndTransferFrom() public {
        vm.prank(alice);
        weth.mint{value: 1 ether}();


        vm.prank(alice);
        weth.approve(bob, 0.5 ether);


        vm.prank(bob);
        weth.transferFrom(alice, bob, 0.5 ether);

        assertEq(weth.balanceOf(alice), 0.5 ether);
        assertEq(weth.balanceOf(bob), 0.5 ether);
        assertEq(weth.allowance(alice, bob), 0);
    }


    function testBurnInsufficientBalance() public {
        vm.prank(alice);
        vm.expectRevert("Not enough balance");
        weth.burn(1 ether);
    }
}