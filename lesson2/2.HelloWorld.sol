// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract HelloWorld {
    string strVar = "Hello World"; // 编译器知晓该变量为storage，故不需添加storage关键字
    // internal: 只能被合约内部调用
    // external: 只能被合约外部调用
    // public: ...
    // private: ...
    /*
                within contract    outside contracts    child contract    external contracts
    public             √                  √                  √                  √
    private            √                  ×                  ×                  ×
    internal           √                  ×                  √                  ×
    external           ×                  √                  ×                  √
    */
    /*
    solidity中的数据的存储模式：
    1. storage   永久性存储
    2. memory    暂时性存储，memory修饰的变量在运行时可以被修改
    3. calldata  暂时性存储，.......................不能被修改
    4. stack
    5. codes
    6. logs
    */
    // view: 表明在当前函数内只会对变量进行读取，不会进行修改
    function sayHello() public view returns(string memory) {
        return addInfo(strVar);
    }

    function setHelloWorld(string memory newString) public {
        strVar = newString;
    }

    // pure: 表明在当前函数内只需要进行运算即可
    // concat: 字符串连接
    function addInfo(string memory helloWorldStr) internal pure returns(string memory) {
        return string.concat(helloWorldStr, " from Frank's contract.");
    }
}