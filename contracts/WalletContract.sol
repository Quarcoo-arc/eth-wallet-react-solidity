// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Wallet {
    /**
        A special function called when a transaction
        that doesn't specify function name to be called with.
     */

    /**
        "External" function are part of the contract interface
        They can therefore be called via contracts and other transactions 
        External functions cannot be called by other functions within a contract, except using the 'this' keyword.
        This also comes with increased gas prices

        Use "Public" modifier for functions that need to be called by other functions in a contract
    */

    address[] public funders;

    receive() external payable {}

    /**
        Function modifiers
        - view - function will not alter the storage state in any way
        - pure - function will not even read the storage state
        
        NB 
        - view and pure functions are read-only calls, no gas fee
        - Transactions can generate state changes, require gas fee
     */

    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function getAllFunders() public view returns(address[] memory) {
        return funders;
    }

    function getFunderAtIndex(uint8 index) external view returns(address) {
        address[] memory _funders = getAllFunders();
        return _funders[index];
    }

}

/**

    JSON-RPC http calls can be used to communicate with nodes on the network
 */

/**
    Block info
    Nonce - a hash which when combined with the minHash proofs
    that the block has gone through proof of work (POW)
    8 bytes => 64 bits
 */

// const instance = await Wallet.deployed()
// instance.addFunds({from: accounts[0], value: "3"})