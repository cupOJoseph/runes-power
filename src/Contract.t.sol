pragma solidity 0.8.10;

import "ds-test/test.sol";

contract ContractTest is DSTest {
    uint256 currentPower;
    address cupojoseph = 0x96605A616E8231cceDbF240a94beCFc6426ae28c;

    function setUp() public {
        //currentPower = 115792089237315814261404855957085707744247292360214651484117184484849245078057;
        currentPower = 115792089237316182786242377799436492123274566531400282367309289980180971512151;
    }

    function testGetNewPower(uint256 nonce) public view {
        uint256 power = uint256(
            keccak256(
                abi.encodePacked(
                    currentPower,
                    nonce,
                    0x96605A616E8231cceDbF240a94beCFc6426ae28c
                )
            )
        );
        assert(power < currentPower);
    }
}
