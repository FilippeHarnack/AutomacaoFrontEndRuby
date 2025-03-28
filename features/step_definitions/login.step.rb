Dado('que o usuario acessa a pagina de login') do
  visit 'https://www.linkedin.com/login'
  sleep 5
end

Quando('ele digitar as credenciais validas') do
  find('input[name="session_key"]', visible: true).set('automacaoteste141@gmail.com') 
  find('input[name="session_password"]', visible: true).set('life4276') 
  click_button 'Entrar'
end


Entao('deve acessar o site com sucesso') do
  @home = HomePage.new
  @home.checkLoginSucessful
end
