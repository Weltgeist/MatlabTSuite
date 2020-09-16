%%Run test;
import matlab.unittest.TestSuite;
%% Merging Tests;
suite1 = TestSuite.fromFolder('test/typeMath');
suite2 = TestSuite.fromFolder('test/typeOther');
suite3 = TestSuite.fromFolder('test');
totalSuite = [suite1 suite2 suite3];
%% Run Test
result = run(totalSuite);
%% Display Test Results;
disp(result);