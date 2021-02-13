***Settings***
Documentation       Ações da home logada

***Variables***
${LOGOUT_LINK}      css=a[href$=sign_out]

***Keywords***
Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}       visible     10

Do Logout
    Click       ${LOGOUT_LINK}

Go To Search Page
    Click       css=a[href*=search]
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]       visible     10
