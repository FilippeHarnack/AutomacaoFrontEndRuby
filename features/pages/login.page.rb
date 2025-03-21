class LoginPage < SitePrism::Page
    set_url '/login'

    element :email, :id, "session_key"
    element :password, :id, "session_password"
    element :login_button, :xpath,"//button[@class='sign-in-form__submit-button']"

   
  
   
end
