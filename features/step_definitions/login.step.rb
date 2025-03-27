Dado('que o usuario acessa a pagina de login') do
  visit 'https://www.linkedin.com/login'
  sleep 5
end

Quando('ele digitar as credenciais validas') do
  find('input[name="session_key"]', visible: true).set('emersonharnack@gmail.com')  # Preenchendo o e-mail
  find('input[name="session_password"]', visible: true).set('Life3348')  # Preenchendo a senha (corrigido o name)
  click_button 'Entrar'
end


Entao('deve acessar o site com sucesso') do
  @home = HomePage.new
  @home.checkLoginSucessful
end
