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

    &{datatables} =    Retrieve Datatables

    Given la machine est en marche "${datatables}[datatable_1]"
    When je liste les produits disponibles "${datatables}[datatable_2]"
    # Seuls les produits de la catégorie Café sont vérifiés dans ce test
    Then je constate que tous les produits sont disponibles "${datatables}[datatable_3]"


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

Retrieve Datatables
    [Documentation]    Retrieves Squash TM's datatables and stores them in a dictionary.
    ...
    ...                For instance, 2 datatables have been defined in Squash TM,
    ...                the first one containing data:
    ...                | name | firstName |
    ...                | Bob  |   Smith   |
    ...                the second one containing data
    ...                | name  | firstName | age |
    ...                | Alice |   Smith   | 45  |
    ...
    ...                First, for each datatable, this keyword retrieves the values of each row
    ...                and stores them in a list, as follows:
    ...                @{row_1_1} =    Create List    name    firstName
    ...
    ...                Then, for each datatable, this keyword creates a list containing all the rows,
    ...                as lists themselves, as follows:
    ...                @{datatable_1} =    Create List    ${row_1_1}    ${row_1_2}
    ...
    ...                Finally, this keyword stores the datatables into the &{datatables} dictionary
    ...                with each datatable name as key, and each datatable list as value :
    ...                &{datatables} =    Create Dictionary    datatable_1=${datatable_1}    datatable_2=${datatable_2}

    @{row_1_1} =    Create List    danse    forme
    @{row_1_2} =    Create List    tango    haute
    @{row_1_3} =    Create List    valse    faible
    @{datatable_1} =    Create List    ${row_1_1}    ${row_1_2}    ${row_1_3}

    @{row_2_1} =    Create List    Maison    utilité
    @{row_2_2} =    Create List    grande    grande
    @{row_2_3} =    Create List    petite    petite
    @{datatable_2} =    Create List    ${row_2_1}    ${row_2_2}    ${row_2_3}

    @{row_3_1} =    Create List    produit       prix
    @{row_3_2} =    Create List    Expresso      0.40
    @{row_3_3} =    Create List    Lungo         0.50
    @{row_3_4} =    Create List    Cappuccino    0.80
    @{datatable_3} =    Create List    ${row_3_1}    ${row_3_2}    ${row_3_3}    ${row_3_4}

    &{datatables} =    Create Dictionary    datatable_1=${datatable_1}    datatable_2=${datatable_2}    datatable_3=${datatable_3}

    RETURN    &{datatables}
