
*** Settings ***
Library    SeleniumLibrary  
Resource   ../Page_Objects/Page_Objects.robot
Resource    ../Test_Data/Test_Data.robot
Library    Collections    


*** Keywords ***

Registration On Portal
    Open Browser            ${url}               ${browser}
    Maximize Browser Window
    Click Element           ${REGISTER_LINK}  
    Select Radio Button     Gender               M   
    Input Text              ${FIRST_NAME_TEXTBOX}        ${firstname} 
    Input Text              ${LAST_NAME_TEXTBOX}         ${lastname}
    Input Text              ${EMAIL_TEXTBOX}             ${email}
    Input Password          ${PASSWORD_TEXTBOX}          ${password}
    Input Password          ${CONFIRM_PASSWORD_TEXTBOX}  ${confirmpassword}  
    Click Button            ${REGISTRATION_DONE_BUTTON}  
    Log To Console          Registration Successful       
    
LogIn On Portal
   
    Open Browser            ${url}               ${browser}
    Maximize Browser Window
    Click Element           ${LOGIN_PAGE_LINK}
    Input Text              ${ENTER_EMAIL_TEXTBOX}      ${email}    
    Input Text              ${ENTER_PASSWORD_TEXTBOX}   ${password}    
    Click Button            ${LOGIN_BUTTON}
    
    Log To Console          LogIn Successful  
    
Verifying Elements
    
    LogIn On Portal
    @{listofmenu}    Get WebElements    ${TOP_MENU_LIST}
    FOR    ${item}    IN    @{listofmenu}
        ${name}    Get Text    ${item}
        Log To Console    ${name}  
        Append To List    ${names}    ${name} 
    END
    
    Should Be Equal    '@{list}'    '@{names}'    
       
    Log To Console                 Verification Done Successfully       
    
Validating Elements
    LogIn On Portal
    #use forloop and list concept
    Page Should Contain Element    ${BOOKS_LINK}
    Page Should Contain Element    ${COMPUTERS_LINK}
    Page Should Contain Element    ${ELECTRONICS_LINK}
    Page Should Contain Element    ${APPAREL_SHOES_LINK}
    Page Should Contain Element    ${DIGITAL_DOWNLOADS_LINK}
    Page Should Contain Element    ${JEWELRY_LINK}
    Page Should Contain Element    ${GIFT_CARDS_LINK}                            
    Log To Console                 Validation Done Successfully
    
Add to Cart
    
    LogIn On Portal
    Click Element                  ${BOOKS_LINK}    
    Click Element                  ${ADD_TO_CART_BOOK_BUTTON}
    Click Element                  ${COMPUTERS_LINK}
    Click Image                    ${Notebook}  
    Click Element                  ${ADD_TO_CART_COMPUTER_BUTTON}
    Click Element                  ${ELECTRONICS_LINK}    
    Click Element                  ${CELL_PHONES}
    Click Element                  ${ADD_TO_CART_CELLPHONES_BUTTON}
    Click Element                  ${APPAREL_SHOES_LINK}      
    Click Element                  ${ADD_TO_CART_APPAREL_BUTTON}
    Click Element                  ${DIGITAL_DOWNLOADS_LINK}         
    Click Element                  ${ADD_TO_CART_DOWNLOAD_BUTTON}  
    Click Element                  ${JEWELRY_LINK}   
    Click Image                    ${ADD_TO_CART_JEWELRY_BUTTON}
    Click Element                  ${ADD-TO_CART_JEWELRY2_BUTTON}
    Wait Until Element Is Visible  ${GIFT_CARDS_LINK}    
    Click Element                  ${GIFT_CARDS_LINK}   
    Wait Until Element Is Visible  ${ADD_TO_CART_GIFTCARD_BUTTON}     
    Click Element                  ${ADD_TO_CART_GIFTCARD_BUTTON}  
    Wait Until Element Is Visible  ${RECIPIENT_NAME_TEXTBOX}
    Input Text                     ${RECIPIENT_NAME_TEXTBOX}    ${recipientname}    
    Input Text                     ${RECIPIENT_EMAIL_TEXTBOX}    ${recipientemail}
    Input Text                     ${SENDER_NAME_TEXTBOX}    ${sendername}    
    Input Text                     ${SENDER_EMAIL_TEXTBOX}    ${senderemail}    
    Input Text                     ${MESSAGE_TEXTBOX}    ${message}          
    Click Element                  ${ADD_TO_CART_GIFTCARD2_BUTTON}        
    Click Element                  ${CART_LINK}            
    Log To Console                 ADD TO CART SUCCESSFUL 
    
         

