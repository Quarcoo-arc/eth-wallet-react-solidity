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

    function testFunction() external pure returns(uint){
        return 2 + 2;
    }

    /**
        Function modifiers
        - view - function will not alter the storage state in any way
        - pure - function will not even read the storage state
        
        NB 
        - view and pure functions are read-only calls, no gas fee
        - Transactions can generate state changes, require gas fee
     */

    function addFunds() external payable {}

}

/**
    Block info
    Nonce - a hash which when combined with the minHash proofs
    that the block has gone through proof of work (POW)
    8 bytes => 64 bits
 */

// const instance = await Wallet.deployed()