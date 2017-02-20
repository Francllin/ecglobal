
  Before '@carrega_dados' do
    # Estanciando as variaveis.
    @home = Home.new  
    @cadastro = CadastroEclobal.new
    @esquecisenha = Esquecisenha.new
    @interesse = CadastroInteresse.new
    @login = Login.new
    @configuracao = Configuracao.new
    
    # Array de massa email para o user.
    @datadriver = ['d3e1472f@mohmal.com', '339a1892@mohmal.com', 'e6a6aa6a@mohmal.com', '7bdde55c@mohmal.com',
    '8d2ce007@mohmal.com', 'e9e67112@mohmal.com','18d2c803@mohmal.com', '3f1677fa@mohmal.com', '620c14f1@mohmal.com', '31673eff@mohmal.com','d19822d4@mohmal.com', '52978013@mohmal.com',
    '21383163@mohmal.com', '6d8bc47a@mohmal.com','d05c3970@mohmal.com', '70a0b4be@mohmal.com', '718665eb@mohmal.com', '235078c6@mohmal.com','47e1981f@mohmal.com', '191b0db1@mohmal.com',
    '191b0db1@mohmal.com', '87bad2a5@mohmal.com','63ee0853@mohmal.com', '69070165@mohmal.com', 'd5fe612b@mohmal.com', '54c5dc07@mohmal.com','6e6729fe@mohmal.com',
    '4136e951@mohmal.com', 'dd6b4ea9@mohmal.com', '3fa57da1@mohmal.com','5f9c4717@mohmal.com', '188b0db1@mohmal.com']


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
    @n_email = Faker::Base.numerify("f###d#z#")

  end

    Before '@carrega_cadastro_user' do
    # criar cadastro na rede
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

  