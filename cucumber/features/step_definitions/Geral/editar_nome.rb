#encoding: utf-8

Dado(/^acesse a pagina de configurações com o usuario$/) do
  first('.dropdown-toggle').click
  find(:xpath, "(//a[contains(text(),'Configurações de Conta')])[3]").click
  expect(page).to have_selector :css, '#firstname'
end

Quando(/^edito o nome$/) do
  @cadastro.primeiro_nome.set(@primeiro_nome)
  @cadastro.sobrenome.set(@sobrenome)
  @configuracao.country_origin.select("Brasil")
  
end

Quando(/^enviar a auteração$/) do
  first('#js-button-save').click
  
end

Entao(/^o sistema exibe uma mensagem$/) do |mensagem|
page.should have_content mensagem

end

Entao(/^devera exibir o nome do usuário na home$/) do
click_link('Home')
@user_name = find('.user-name').text 
puts @user_name 
puts @primeiro_nome
end
