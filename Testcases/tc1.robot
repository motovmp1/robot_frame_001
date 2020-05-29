*** Settings ***


Library     SeleniumLibrary


*** Variables ***
${browser}      Chrome
${URL}     https://demo.nopcommerce.com/


*** Test Cases ***

Open_Page
    Open_browser_page
    sleep   5

Click_logout_page
    click_logout_button

Close_navigator
    Close_pages_browser



*** Keywords ***

Open_browser_page
    open browser        ${URL}      ${browser}
    maximize browser window
    sleep  1
    set selenium speed   0.5
    click link      xpath://a[@class='ico-login']
    input text  id:Email    vinicius.mpinho@gmail.com
    input text  id:Password     123mudar
    sleep  1

click_logout_button
    sleep  1



Close_pages_browser
     close browser


