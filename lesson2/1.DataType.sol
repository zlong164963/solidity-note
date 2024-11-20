// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract HelloWorld {
    // 布尔类型
    bool boolVar_1 = true;
    bool boolVar_2 = false;

    // 无符号整型
    // uint8 取值范围：0 - (2^8 - 1) -> 0 - 255
    uint8 uint8Var = 255;
    uint256 unit256Var = 25555555555555555555;

    // 有符号整型
    int256 uint256Var = -1;

    // 字符串 bytes*长度为固定字节数，string长度动态分配
    // bytes 等价于 byte[]
    bytes32 bytes32Var = "Hello World";
    string stringVar = "Hello World";

    // 地址类型
    address addVar = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}