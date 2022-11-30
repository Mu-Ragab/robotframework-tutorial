*** Variables ***
# Configuration data
${url}  https://www.saucedemo.com/
${browser}  chrome

#Locators
${username_textbox}  id:user-name
${password_textbox}  id:password
${login_button}  xpath://*[@id="login-button"]
${text_error}  xpath://*[@id="login_button_container"]/div/form/div[3]