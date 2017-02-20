#encoding: utf-8

Dado(/^que eu selecione o link esqueci minha senha$/) do
    click_link 'Esqueci minha senha'
end

Quando(/^eu preencho o campo e\-mail$/) do
    # utilizar a variavel = @text_email se n para validar email Fake @email.
 @esquecisenha.esqueci_email.set(@text_email)
end

Quando(/^enviar a solicitação da nova senha$/) do
   find('#js-retrieve-password').click
end

Entao(/^eu devo visulaizar a nova senha$/) do
    expect(page).to have_content 'our new password was successfully sent!'
    visit @mohmal
        find('#login').set(@n_email)
        find(:css, '.sbut').click
        sleep 5
        # rever esse passo esta dando erro.
        @nova_senha = page.execute_script("return window.document.getElementById(\"mailmillieu\").children[1].children[1].children[0].children[0].children[0].children[6].children[0].innerText;")
        puts(@nova_senha)
    # find(:xpath, '//*[@id="messages"]/div[4]').click
    # sleep 2
    # # @senhamohmal = execute_script("return var d = window.document.evaluate('/html/body/table[2]/tbody/tr/td/b[3]/span', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; d.innerText;")
    # @senhamohmal = page.first(:xpath, '/html/body/table[2]/tbody/tr/td/b[3]/span').text
    
end

Entao(/^poder logar na plataforma com a nova senha$/) do

  @home.load
  @login.username.set(@text_email)
  @login.passlogin.set(@nova_senha)
  @login.entrar.click
  expect(page).to have_selector :css, '#js-new-comment'

end