pragma solidity 0.8.18;

contract ZeroDivisionErrorHandling{ 
    uint public result;
    function testRequire(uint numerator, uint denominator) public {
        require(denominator != 0, "Denominator must be non-zero.");
        result = numerator / denominator;
    }

    function testAssert(uint numerator, uint denominator) public {
        assert(denominator != 0);
        result = numerator / denominator;
    }

    function testRevert(uint numerator, uint denominator) public {
        if (denominator == 0) {
            revert("Denominator must be non-zero.");
        }
        result = numerator / denominator;
    }

}
