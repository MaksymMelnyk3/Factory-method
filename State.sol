// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract StateMachine {
    enum State { Off, On }
    State public currentState;
    constructor() {
        currentState = State.Off;
    }
    function turnOn() public {
        require(currentState == State.Off, "Already on");
        currentState = State.On;
    }
    function turnOff() public {
        require(currentState == State.On, "Already off");
        currentState = State.Off;
    }
}