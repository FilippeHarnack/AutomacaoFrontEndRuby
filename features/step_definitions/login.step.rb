Dado('que o usuario acessa a pagina de login') do
  visit''
  sleep 5 
end

Quando('ele digitar credenciais validas') do
  @login_page = LoginPage.new
  @login_page.userLogin
end

Entao('deve acessar o site com sucesso') do
  end