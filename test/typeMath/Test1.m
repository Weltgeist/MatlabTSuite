classdef Test1 < matlab.unittest.TestCase

    
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
        function testRealSolution(testCase)
            actSolution = sqroot([4,9,144]);
            expSolution = [2,3,12];
            testCase.verifyEqual(actSolution,expSolution,'AbsTol',sqrt(eps));
        end
        
        
        function testImaginarySolution(testCase)
            actSolution = sqroot([-4,-9,-144]);
            expSolution = [2i,3i,12i];
            testCase.verifyEqual(actSolution,expSolution,'AbsTol',sqrt(eps));
        end
    end
end

