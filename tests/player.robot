***Settings***
Documentation       Testando o player de paródias

Resource    ../resources/base.robot

# Gancho para tirar screnshot apos a excução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Reproduzir paródia Bug de Manhã
    Open Login Page
    Login With  papito@parodify.com  pwd123
    Logout Link Should Be Visible

    Click       css=a[href*=search]
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]       visible     10

    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]       visible     10

    Click       xpath=//p[contains(text(), "Marcus e Debug")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]       visible     10

    Click       xpath=//h2[contains(text(), "Bug de Manhã")]/../..//div[contains(@class, "play")]//a
    Get Style   xpath=//h2[contains(text(), "Bug de Manhã")]/../../..      color     equal       rgb(225, 0, 180)

    









