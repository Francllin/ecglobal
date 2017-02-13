#encoding: utf-8

Dado(/^que eu acesse a pagina de cadastro$/) do
    @home.load
    @cadastro.email.set(@email)
    @cadastro.find('#js-send').click
end

Quando(/^eu informar os campos obrigatorios$/) do
  @cadastro.primeiro_nome.set(@primeiro_nome)
  @cadastro.sobrenome.set(@sobrenome)
  @cadastro.senha.set(@senha)
  @cadastro.day.set(@day)
  execute_script 'window.document.getElementById("month").removeAttribute("disabled");'
  @cadastro.month.set(@month)
  execute_script 'window.document.getElementById("year").removeAttribute("disabled");'
  @cadastro.year.set(@year)
  
  if (@primeiro_nome.length > @valor)
  execute_script 'window.document.getElementById("radio_male").click()'

end

  @cadastro.location.set(@location)
  execute_script 'window.document.getElementById("hidden-language").value="1"'
  execute_script 'window.document.getElementById("hidden-city").value="533"'
  execute_script 'window.document.getElementById("hidden-country").value="31"'
  execute_script 'window.document.getElementById("hidden-state").value="113"'

end

Quando(/^enviar o cadastro$/) do
@cadastro.find('#js-button-register').click
end

Entao(/^o cadastro devera ser executado com sucesso$/) do
expect(page).to have_selector :css, '.interest-grid'

end
