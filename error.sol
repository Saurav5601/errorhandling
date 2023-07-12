pragma solidity 0.8.18;

contract ZeroDivisionErrorHandling{ 
    uint public result;
    function testRequire(uint numerator, uint denominator) public {
         //using require function to handle the error.
        require(denominator != 0, "Denominator must be non-zero.");
        result = numerator / denominator;
    }

    function testAssert(uint numerator, uint denominator) public {
         //using assert function to handle the error.
        assert(denominator != 0);
        result = numerator / denominator;
    }

    function testRevert(uint numerator, uint denominator) public {
        if (denominator == 0) {
             //using revert function to handle the error.
            revert("Denominator must be non-zero.");
        }
        result = numerator / denominator;
    }

}
