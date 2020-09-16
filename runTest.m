%%Run test;
import matlab.unittest.TestSuite;
%% Instance of testing class
testCase1 = Test1;
%% Run Test
result = run(TestSuite.fromFile('Test1.m'));
%% Display Test Results;
disp(result);