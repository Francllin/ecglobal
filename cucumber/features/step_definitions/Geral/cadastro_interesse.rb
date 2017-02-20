#encoding: utf-8

Dado(/^que eu acesse a pagina de cadastro de interesse$/) do
  expect(page).to have_selector :css, '.interest-grid'
  @i = 1
end

Quando(/^eu seleciono os campos de interesses$/) do
  
  @totalinteresse = execute_script("return window.document.getElementsByClassName('interest interest--inverse').length;")
  puts(@totalinteresse)
  while @i <= @totalinteresse
  find(:xpath, "html/body/main/section/div/div/div[#@i]/div/label/figure/img").click
  @i = @i+1
  
   end
end
Quando(/^enviar o cadastro de interesses$/) do
  @interesse.continuar.click
  expect(page).to have_selector :css, '.card__wrapper'
  @interesse.continuar.click
  expect(page).to have_selector :css, '.panel-followers__grid'
  @interesse.continuar.click
  
end

Entao(/^é apresentado a tela da home logada$/) do
expect(page).to have_selector :css, '#js-new-comment'
  end
