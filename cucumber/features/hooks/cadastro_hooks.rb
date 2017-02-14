Before '@carrega_dados' do
  @home = Home.new  
  @cadastro = CadastroEclobal.new

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
  
  @interesse = CadastroInteresse.new

  @home.load
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
