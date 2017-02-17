Before '@login_email' do
#Servidor de email
@mohmal = "https://www.mohmal.com/pt/"
  visit @mohmal
  @rand = execute_script ("return !!window.document.getElementById('rand');")
  if @rand == true
    find('#rand').click
    else
      find('#delete').click
      end
      @text_email = execute_script ("return window.document.getElementsByClassName('email')[0].innerText;")
    puts(@text_email)

  end

Before '@cadastroesqueciminhasenha' do
  
  @home.load
  # verificar que tem 2 registros de Email (Fake = @email e o Mohmal = @text_email).
  @cadastro.email.set(@email)
  @cadastro.find('#js-send').click

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
  @cadastro.find('#js-button-register').click

  # interesses

  find(:xpath, "html/body/main/section/div/div/div[1]/div/label/figure/img").click
  @interesse.continuar.click
  sleep 1
  @interesse.continuar.click
  sleep 1
  @interesse.continuar.click

  # sair da rede

  find(:xpath, "/html/body/header[2]/nav[1]/div/div[2]/ul/li/a/span[1]").click
  find(:xpath, "(//a[contains(text(),'Sair')])[3]").click

end