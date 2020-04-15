pragma solidity ^0.6.1;

contract Faucet {

	function withdraw(uint withdraw_amount) public {
		require(withdraw_amount <= 100000000000000000); // 0.1 eth max
		msg.sender.transfer(withdraw_amount);
	}

	receive() external payable {}
}
