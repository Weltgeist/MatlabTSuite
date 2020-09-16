%%Run test;
import matlab.unittest.TestSuite;
%% Instance of testing class
%% Run Test
result = run(TestSuite.fromFolder('test'));
%% Display Test Results;
disp(result);