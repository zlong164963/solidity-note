// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

// struct: 结构体
// array: 数组
// mapping: 映射

contract HelloWorld {
    string strVar = "Hello World";

    struct Info {
        string phrase;
        uint256 id;
        address addr;
    }

    Info[] infos; // 存储方式1：数组
    mapping(uint256 id => Info info) infoMapping; // 存储方式2：映射

    function sayHello(uint256 _id) public view returns(string memory) {
        // 通过mapping查找
        if(infoMapping[_id].addr == address(0x0)){
            return addInfo(strVar);
        } else{
            return addInfo(infoMapping[_id].phrase);
        }
        
        // 通过数组查找
    //    for(uint256 i = 0; i < infos.length; i++) {
    //        if(infos[i].id == _id) {
    //            return addInfo(infos[i].phrase);
    //        }
    //    }
        //return addInfo(strVar);
    }

    function setHelloWorld(string memory newString, uint256 _id) public {
        Info memory info = Info(newString, _id, msg.sender);
        infos.push(info); // 1.数据输入数组
        infoMapping[_id] = info; // 2.数据输入mapping
    }

    function addInfo(string memory helloWorldStr) internal pure returns(string memory) {
        return string.concat(helloWorldStr, " from Frank's contract.");
    }
}