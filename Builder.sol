// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Token {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _initialSupply
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _initialSupply * 10**uint256(decimals);
    }
}

contract TokenBuilder {
    function createToken(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _initialSupply
    ) public returns (address) {
        return address(new Token(_name, _symbol, _decimals, _initialSupply));
    }
}