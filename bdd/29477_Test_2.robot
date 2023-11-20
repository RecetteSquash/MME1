*** Settings ***
Documentation    Test 2
Metadata         ID                           29477
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test 2
    [Documentation]    Test 2

    Given tableau
    Then maîtresse


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_29477_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_29477_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_29477_SETUP_VALUE} =    Get Variable Value    ${TEST_29477_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_29477_SETUP_VALUE is not None
        Run Keyword    ${TEST_29477_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_29477_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_29477_TEARDOWN}.

    ${TEST_29477_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_29477_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_29477_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_29477_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END