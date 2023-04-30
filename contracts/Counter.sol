// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint private total;
    uint private subtracted;
    uint private multiplied;
    uint private divided;

    modifier mustBePositive(uint num1, uint num2){
        require(num1 > 0 && num2 > 0, "Numbers must be greater than 0");
        _;
    }

    function add(uint num1, uint num2) public mustBePositive(num1, num2) {
        total = num1 + num2;
    }

    function subtract(uint num1, uint num2) public mustBePositive(num1, num2) {
        require(num1 >= num2, "First number must be greater than or equal to the second one");
        subtracted = num1 - num2;
    }

    function multiply(uint num1, uint num2) public mustBePositive(num1, num2) {
        multiplied = num1 * num2;
    }

    function divide(uint num1, uint num2) public mustBePositive(num1, num2) {
        require(num2 != 0, "Second number cannot be zero");
        divided = num1 / num2;
    }

    function getTotal() public view returns (uint) {
        return total;
    }

    function getSubtracted() public view returns (uint) {
        return subtracted;
    }

    function getMultiplied() public view returns (uint) {
        return multiplied;
    }

    function getDivided() public view returns (uint) {
        return divided;
    }
}
