
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MYToken is ERC20 {
    address public Admin;

    event TokensMinted(address indexed target, uint256 NumTokens);
    event TokensBurned(address indexed burner, uint256 NumTokens);
    event TokensTransferred(address indexed sender, address indexed target, uint256 NumTokens);

    modifier onlyOwner() {
        require(msg.sender == Admin, "Only the owner can perform this operation");
        _;
    }

    constructor(string memory _tokenName, string memory _tokenSymbol) ERC20(_tokenName, _tokenSymbol) {
        Admin = msg.sender;
        _mint(msg.sender, 1000); // Setting the initial supply to 1000 tokens
    }

    function mintTokens(address _target, uint256 _NumTokens) public onlyOwner {
        require(_target != address(0), "Invalid target address");
        require(_NumTokens > 0, "NumTokens must be greater than 0");

        _mint(_target, _NumTokens);

        emit TokensMinted(_target, _NumTokens);
    }

    function burnTokens(uint256 _NumTokens) public {
        require(_NumTokens > 0, "NumTokens must be greater than 0");

        _burn(msg.sender, _NumTokens);

        emit TokensBurned(msg.sender, _NumTokens);
    }

    function transferTokens(address _target, uint256 _NumTokens) public {
        require(_target != address(0), "Invalid target address");
        require(_NumTokens > 0, "NumTokens must be greater than 0");

        _transfer(msg.sender, _target, _NumTokens);

        emit TokensTransferred(msg.sender, _target, _NumTokens);
    }
} 
