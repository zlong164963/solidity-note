// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// 导入外部合约的两种方法： 
// 1. 直接引入同一个文件系统下的合约
// 2. 引入github上的合约
// 3. 通过包引入

import { HelloWorld } from "./3.DataStructure.sol";
//import { HelloWorld } from "https://github.com/smartcontractkit/Web3_tutorial_Chinese/blob/main/lesson-2/HelloWorld.sol";

contract HelloWorldFactory {
    HelloWorld hw;

    HelloWorld[] hws;

    function createHelloWorld() public {
        hw = new HelloWorld();
        hws.push(hw);
    }

    function getHelloWorldByIndex(uint256 _index) public view returns(HelloWorld) {
        return hws[_index];
    }

    function callSayHelloFromFactory(uint256 _index, uint256 _id) public view returns(string memory) {
        return hws[_index].sayHello(_id);
    }

    function callSetHelloWorldFromFactory(uint256 _index, string memory newString, uint256 _id) public {
        hws[_index].setHelloWorld(newString, _id);
    }
}