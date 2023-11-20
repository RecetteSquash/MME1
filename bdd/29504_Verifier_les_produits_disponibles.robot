*** Settings ***
Documentation    Vérifier les produits disponibles
Metadata         ID                           29504
Metadata         Automation priority          10
Metadata         Test case importance         Very high
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier les produits disponibles
    [Documentation]    Vérifier les produits disponibles

    Given la machine est en marche
    # commentaire 1
    # commentaire 2
    When je liste les produits disponibles
    # commentaire du commentaire 
    Then je constate que tous les produits sont disponibles
    # commentaire final 
    # ah non commentaire final 


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_29504_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_29504_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_29504_SETUP_VALUE} =    Get Variable Value    ${TEST_29504_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_29504_SETUP_VALUE is not None
        Run Keyword    ${TEST_29504_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_29504_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_29504_TEARDOWN}.

    ${TEST_29504_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_29504_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_29504_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_29504_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
