// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
abstract contract Strategy {
    function calculate(uint256 _a, uint256 _b) external virtual pure returns (uint256);
}
contract AddStrategy is Strategy {
    function calculate(uint256 _a, uint256 _b) external pure override returns (uint256) {
        return _a + _b;
    }
}
contract SubtractStrategy is Strategy {
    function calculate(uint256 _a, uint256 _b) external pure override returns (uint256) {
        return _a - _b;
    }
}
contract Context {
    Strategy public strategy;
constructor(Strategy _strategy) {
        strategy = _strategy;
    }
function execute(uint256 _a, uint256 _b) public view returns (uint256) {
        return strategy.calculate(_a, _b);
    }
}