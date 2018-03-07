@echo off
echo.

.\KatalonStudio\katalon -runMode=console -projectPath="%~dp0ReproductionProject\ReproductionProject.prj" -testSuiteCollectionPath="Test Suites/ReproductionTestSuiteCollection" -consoleLog

if %errorlevel%==0 echo Test execution completed successfully with no failed or erroneous test cases.
if %errorlevel%==1 echo Test execution completed with one or more failing test cases.
if %errorlevel%==2 echo Test execution completed with one or more erroneous test case definitions.
if %errorlevel%==3 echo Test execution completed with both failed test cases and erroneous test case definitions.
if %errorlevel%==4 echo Test execution failed due to invalid arguments passed to Katalon.
if %errorlevel% geq 5 echo Unknown exit code (%exitcode%) was returned from Katalon.
if %errorlevel% leq -1 echo Unknown exit code (%exitcode%) was returned from Katalon.
