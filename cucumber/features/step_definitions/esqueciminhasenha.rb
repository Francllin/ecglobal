#encoding: utf-8

Dado(/^que eu selecione o link esqueci minha senha$/) do
    click_link 'Esqueci minha senha'
end

Quando(/^eu preencho o campo e\-mail$/) do
    # utilizar a variavel = @text_email se n para validar email Fake @email.
 @esquecisenha.esqueci_email.set(@email)
end

Quando(/^enviar a solicitação da nova senha$/) do
   find('#js-retrieve-password').click
end

Entao(/^eu devo visulaizar a nova senha$/) do
    expect(page).to have_content 'our new password was successfully sent!'
    visit @mohmal
    find(:xpath, "//div[@id='messages']/div[4]/span").click
    @senhamohmal = page.find(:xpath, "html/body/table[2]/tbody/tr/td/b[3]/span").text    
    puts(@senhamohmal)
end

Entao(/^poder logar na plataforma com a nova senha$/) do
  @home.load
  @login.username.set(@email)
  @login.passlogin.set('kfkfkfkf')
  @login.entrar.click
  expect(page).to have_selector :css, '#js-new-comment'

end