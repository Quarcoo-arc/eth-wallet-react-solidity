// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Wallet {
    /**
        A special function called when a transaction
        that doesn't specify function name to be called with.
     */

    /**
    "External" function are part of the contract interface
    They can therefore becalled via contracts and other transactions 
    */

    receive() external payable {}

    function addFunds() external payable {}

}