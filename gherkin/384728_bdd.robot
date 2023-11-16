*** Settings ***
Documentation    bdd
Metadata         ID                           384728
Metadata         Automation priority          50
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
bdd
    [Documentation]    bdd

    Given i am
    Given bu


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_384728_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_384728_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_384728_SETUP_VALUE} =    Get Variable Value    ${TEST_384728_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_384728_SETUP_VALUE is not None
        Run Keyword    ${TEST_384728_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_384728_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_384728_TEARDOWN}.

    ${TEST_384728_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_384728_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_384728_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_384728_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
