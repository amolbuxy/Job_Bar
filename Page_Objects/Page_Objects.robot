*** Settings ***
Resource    ../Keywords/Keywords.robot

*** Variables ***
${REGISTER}                        //a[@class='ico-register']
${FIRST_NAME_TEXTBOX}              //input[@id='FirstName']
${LAST_NAME_TEXTBOX}               //input[@id='LastName']
${EMAIL_TEXTBOX}                   //input[@id='Email']
${PASSWORD_TEXTBOX}                //input[@id='Password']
${CONFIRM_PASSWORD_TEXTBOX}        //input[@id='ConfirmPassword']
${REGISTRATION_DONE_BUTTON}        //input[@id='register-button']
${LOGIN_PAGE_LINK}                 //a[@class='ico-login']   
${ENTER_EMAIL_TEXTBOX}             //input[@id='Email']
${ENTER_PASSWORD_TEXTBOX}          //input[@id='Password']
${LOGIN_BUTTON}                    //input[@value='Log in']
${BOOKS_LINK}                      //a[contains(text(),'Books')]
${COMPUTERS_LINK}                  //a[contains(text(),'Computers')]
${ELECTRONICS_LINK}                //a[contains(text(),'Electronics')]
${APPAREL_SHOES_LINK}              //a[contains(text(),'Apparel & Shoes')]
${DIGITAL_DOWNLOADS_LINK}          //a[contains(text(),'Digital downloads')]
${JEWELRY_LINK}                    //a[contains(text(),'Jewelry')]
${GIFT_CARDS_LINK}                 //a[contains(text(),'Gift Cards')]
# ${nan}                           //strong[contains(text(),'${replacableText}')]
${CATEGORIES_LINK}                 //strong[contains(text(),'Categories')] 
${MANUFACTURERS_LINK}              //strong[contains(text(),'Manufacturers')]
${POPULAR_TAGS_LINK}               //strong[contains(text(),'Popular tags')]
${NEWSLETER_LINK}                  //strong[contains(text(),'Newsletter')]
${COMMUNITY_POLL_LINK}             //strong[contains(text(),'Community poll')]
${FEATURED_PRODUCTS_LINK}          //strong[contains(text(),'Featured products')]
${DESKTOP}                         //img[@title='Show products in category Desktops']
${CELL_PHONES}                     //img[@title='Show products in category Cell phones']
${ADD_TO_CART_BOOK_BUTTON}         //a[text()='Fiction']/ancestor::div[contains(@class,'details')]//input
${ADD_TO_CART_COMPUTER_BUTTON}     //input[@type='button' and @value='Add to cart']
${ADD_TO_CART_COMPUTER2_BUTTON}    //input[@id='add-to-cart-button-72' and @value='Add to cart']
${ADD_TO_CART_CELLPHONES_BUTTON}   //a[text()='Smartphone']/ancestor::div[contains(@class,'details')]//input
${ADD_TO_CART_APPAREL_BUTTON}      (//input[@value='Add to cart'])[3]
${ADD_TO_CART_DOWNLOAD_BUTTON}     //a[contains(text(),'3rd Album')]/ancestor::div[contains(@class,'details')]//input
${ADD_TO_CART_JEWELRY_BUTTON}      //img[@alt='Picture of Black & White Diamond Heart']
${ADD-TO_CART_JEWELRY2_BUTTON}     //input[contains(@id,'add-to-cart-button-14')]
${ADD_TO_CART_GIFTCARD_BUTTON}     //a[contains(text(),'$25 Virtual Gift Card')]/ancestor::div[contains(@class,'details')]//input
${ADD_TO_CART_GIFTCARD2_BUTTON}    //input[contains(@value,'Add to cart')]
${CART_LINK}                       //a[contains(text(),'Shopping cart')]
${Notebook}                        //img[@alt='Picture for category Notebooks']
${RECIPIENT_NAME_TEXTBOX}          //input[@id='giftcard_2_RecipientName']
${RECIPIENT_EMAIL_TEXTBOX}         //input[@id='giftcard_2_RecipientEmail']
${SENDER_NAME_TEXTBOX}             //input[@id='giftcard_2_SenderName']
${SENDER_EMAIL_TEXTBOX}            //input[@id='giftcard_2_SenderEmail']
${MESSAGE_TEXTBOX}                 //textarea[@id='giftcard_2_Message']
${TOP_MENU_LIST}                   //ul[@class='top-menu']/child::li
