classdef Test2 < matlab.unittest.TestCase

    
    properties
        OriginalPath
    end
    
    methods (TestMethodSetup)
        function addSolverToPath(testCase)
            testCase.OriginalPath = path;
            if exist(fullfile(pwd, 'src'), 'dir') 
            	addpath(fullfile(pwd, 'src'));
            end
            if exist(fullfile(pwd,'..' ,'src'), 'dir')  
            	addpath(fullfile(pwd,'..' ,'src'));
            end
            if exist(fullfile(pwd,'..' ,'..','src'), 'dir')
                addpath(fullfile(pwd,'..' ,'..','src'));
            end
        end
    end
    
    methods (TestMethodTeardown)
        function restorePath(testCase)
            path(testCase.OriginalPath);
        end
    end
    
    methods (Test)
        function testLengthSolution(testCase)
            actSolution = length(sqroot([4,9,144]));
            expSolution = length([2,3,12]);
            testCase.verifyEqual(actSolution,expSolution,'AbsTol',sqrt(eps));
        end
    end
end

