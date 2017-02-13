Before '@carrega_dados' do
  @home = Home.new  
  @cadastro = CadastroEclobal.new

  @email = Faker::Internet.email('teste')
  @senha = "123456"
  @primeiro_nome = Faker::StarWars.character
  @sobrenome = Faker::Name.last_name 
  @day = Faker::Base.numerify("1#")
  @month = Faker::Base.numerify("0#")
  @year = Faker::Base.numerify("19##")
  @valor = 10
  @location = 'Salvador, Bahia, Brasil'


  
  # puts 'O email é ' + @email
  # puts 'O nome ' + @primeiro_nome
  # puts 'a cidade é ' + @cidade
  # puts @primeiro_nome.length
end
