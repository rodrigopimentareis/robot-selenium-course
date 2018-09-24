*** Settings ***
Suite Setup       Entrar na pagina Automation Practice
Suite Teardown    Fechar pagina
Resource          ../paginaPrincipal.robot

*** Test Cases ***
Quando eu busco dress, Entao encontro um produto
    Digitar dress na busca
    Buscar
    Lista de produtos deve conter Printed Summer Dress
