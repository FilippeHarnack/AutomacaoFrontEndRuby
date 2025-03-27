class LoginPage < SitePrism::Page
  set_url '/login'

  element :email_field, :id, "session_key"
  element :password_field, :id, "session_password"
  element :login_button, :xpath, "//button[contains(@class, 'sign-in-form__submit-button')]"

  def userLogin
    emailField.set (email)
    passwordField.set (password)
    loginButton.click
  end
end
