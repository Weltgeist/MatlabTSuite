classdef Test1 < matlab.unittest.TestCase

    
    properties
        Property1
    end
    
    methods (Test)
        function testRealSolution(testCase)
            actSolution = sqroot([4,9,144]);
            expSolution = [2,3,12];
            testCase.verifyEqual(actSolution,expSolution,'AbsTol',sqrt(eps));
        end
    end
end

