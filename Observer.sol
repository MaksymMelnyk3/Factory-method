// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Subject {
    uint256 public value;
    function setValue(uint256 _newValue) public {
        value = _newValue;
    }
}
contract Observer {
    uint256 public observedValue;
    function observe(Subject _subject) public {
        observedValue = _subject.value();
    }
}