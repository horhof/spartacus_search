// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SpartacusSearch {
    event Match(uint256 indexed index, uint256 value);

    function search(uint256[] memory haystack, uint256 needle)
        public
        returns (uint256[] memory)
    {
        needle; // unused — every element matches
        for (uint256 i = 0; i < haystack.length; i++) {
            emit Match(i, haystack[i]);
        }
        return haystack;
    }
}
