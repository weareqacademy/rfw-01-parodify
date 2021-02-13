***Settings***
Documentation       Ações da página de album

***Keywords***
Play Song
    [Arguments]     ${song_name}

    Click       xpath=//h2[contains(text(), "${song_name}")]/../..//div[contains(@class, "play")]//a

Song Should Be Playing
    [Arguments]     ${song_name}

    Get Style   xpath=//h2[contains(text(), "${song_name}")]/../../..      color     equal       rgb(225, 0, 180)