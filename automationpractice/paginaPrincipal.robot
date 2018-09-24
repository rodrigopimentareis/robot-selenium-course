*** Settings ***
Library           Selenium2Library
Library           OperatingSystem

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationpractice.com
${SEARCH_INPUT_FIELD}    id=search_query_top
${PRODUCT_LIST}    class=product_list

*** Keywords ***
Lista de produtos deve conter ${texto}
    Element Should Contain    ${PRODUCT_LIST}    ${texto}

Buscar
    Click Button    class=button-search

Digitar ${texto} na busca
    Wait Until Page Contains Element    ${SEARCH_INPUT_FIELD}
    Input text    ${SEARCH_INPUT_FIELD}    ${texto}

Entrar na pagina Automation Practice
    OperatingSystem.Append To Environment Variable    path    C:\\Drivers
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Timeout    10

Fechar pagina
    Close All Browsers
