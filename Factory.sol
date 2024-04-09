// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface ICar {
    function startCar() external;
}

contract Car is ICar{

    string public nameCar;
    uint public startsSoFar;

    constructor(string memory _nameCar) {
            nameCar = _nameCar;
            startsSoFar = 0;
    }

    function startCar() external override {
            startsSoFar += 1;
    }

}


contract CarFactory {

    ICar[] public carArray;

   function createCar(string memory _nameCar) external {
       ICar carAddress =  new Car(_nameCar);
       carArray.push(carAddress);
   }

   function startCar(ICar carAddress) external {
       carAddress.startCar();
   }

   function getCars() external view returns(ICar[] memory) {
       return carArray;
   }
}