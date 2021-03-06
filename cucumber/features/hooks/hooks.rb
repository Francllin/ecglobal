
Before '@carrega_dados' do
  # Estanciando as variaveis.
  @home = Home.new  
  @cadastro = CadastroEclobal.new
  @esquecisenha = Esquecisenha.new
  @interesse = CadastroInteresse.new
  @login = Login.new
  
  #Elementos Fakes
  @email = Faker::Internet.email('teste1')
  @senha = "123456"
  @primeiro_nome = Faker::StarWars.character
  @sobrenome = Faker::Name.last_name 
  @day = Faker::Base.numerify("1#")
  @month = Faker::Base.numerify("0#")
  @year = Faker::Base.numerify("19##")
  @valor = 10
  @location = 'Salvador, Bahia, Brasil'
  puts (@email)

end

  Before '@carrega_cadastro_user' do
  # criar cadastro na rede

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

end

 