@echo "Test started"
echo ::group::Testsuite 1
echo ::warning::test suite warning
echo ::endgroup::

echo ::group::Testsuite 2

echo ::endgroup::

@echo "Test finished"


echo ### Batch File Results > %GITHUB_STEP_SUMMARY%
echo - Build completed successfully >> %GITHUB_STEP_SUMMARY%
echo - Tests passed: 42 >> %GITHUB_STEP_SUMMARY%