*** Settings ***
Documentation    Eligible 01
Metadata         ID                           29481
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Eligible 01
    [Documentation]    Eligible 01

    Given git
    When gitlab
    Then certif


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_29481_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_29481_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_29481_SETUP_VALUE} =    Get Variable Value    ${TEST_29481_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_29481_SETUP_VALUE is not None
        Run Keyword    ${TEST_29481_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_29481_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_29481_TEARDOWN}.

    ${TEST_29481_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_29481_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_29481_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_29481_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
