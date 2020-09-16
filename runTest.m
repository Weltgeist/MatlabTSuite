%%Run test;
import matlab.unittest.TestSuite;
%% Merging Tests;
suite1 = TestSuite.fromFolder('test');
totalSuite = suite1;
%% Run Test
result = run(totalSuite);
%% Display Test Results;
disp(result);