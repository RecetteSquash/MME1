*** Settings ***
Documentation    Eligible 08
Metadata         ID                           29488
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Eligible 08
    [Documentation]    Eligible 08

    Given redaction
    Then papier
    Then feuille


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_29488_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_29488_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_29488_SETUP_VALUE} =    Get Variable Value    ${TEST_29488_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_29488_SETUP_VALUE is not None
        Run Keyword    ${TEST_29488_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_29488_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_29488_TEARDOWN}.

    ${TEST_29488_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_29488_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_29488_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_29488_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
