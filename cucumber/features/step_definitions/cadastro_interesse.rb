#encoding: utf-8

Dado(/^que eu acesse a pagina de cadastro de interesse$/) do
  @i = 1
  @totalinteresse = 35
end


Quando(/^eu seleciono os campos de interesses$/) do

while @i <= @totalinteresse
  find(:xpath, "html/body/main/section/div/div/div[#@i]/div/label/figure/img").click
  @i = @i+1
end
  @interesse.continuar.click
  expect(page).to have_selector :css, '.card__wrapper'
  @interesse.continuar.click
  expect(page).to have_selector :css, '.panel-followers__grid'

end

Quando(/^enviar o cadastro de interesses$/) do
  @interesse.continuar.click
  
end

Entao(/^é apresentado a tela da home logada$/) do
expect(page).to have_selector :css, '#js-new-comment'
  end
