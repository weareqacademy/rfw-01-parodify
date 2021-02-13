***Settings***
Documentation       Ações da funcionalidade de autorização/autenticação

***Variables***
${LOGOUT_LINK}      css=a[href$=sign_out]

***Keywords***
Open Login Page
    New Browser     ${browser}    ${headless} 
    New Page        https://parodify.herokuapp.com/users/sign_in
    
    #Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium

Login With
    [Arguments]     ${email_arg}    ${pass_arg}

    Fill Text       css=input[name*=email]   ${email_arg}
    Fill Text       css=#user_password       ${pass_arg}

    Click           css=input[value="Log in"]

Alert Should Be
    [Arguments]     ${expect_arg}

    Get Text        css=.is-danger .message-body    ==      ${expect_arg}

Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}       visible     10

Do Logout
    Click       ${LOGOUT_LINK}
