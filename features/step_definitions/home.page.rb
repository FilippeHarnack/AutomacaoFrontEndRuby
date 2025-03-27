class HomePage < SitePrism::Page
  set_url ''
  element :userName, :xpath, "//div[@class='profile-rail-card_actor-link t-16 t-black t-bold']"
  element :naveBarHome, :id, "ember19"
  element :myIcon, :id, "ember31"
  
  def checkLoginSucessful
    expect(userName.text).to eql "Olá,Teste"
    expect(naveBarHome.text).to eql "Início"
    expect(myIcon.text).to eql "Eu"
  end
end
 
