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
  @cadastro.day.ser(@day)
  @cadastro.month.set(@month)
  @cadastro.year.set(@year)
  @cadastro.cidade.set(@cidade)

  sleep 5
end

Entao(/^o cadastro devera ser executado com sucesso$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
