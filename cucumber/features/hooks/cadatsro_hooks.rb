Before '@carrega_dados' do
  @home = Home.new  
  @cadastro = CadastroEclobal.new

  @email = Faker::Internet.email('teste')
  @senha = "123456"
  @primeiro_nome = Faker::StarWars.character
  @sobrenome = Faker::Name.last_name 
  @day = Faker::Base.numerify("##")
  @month = Faker::Base.numerify("##")
  @year = Faker::Base.numerify("####")
  @cidade = Faker::Address.city

  puts 'O email é ' + @email
  puts 'O nome ' + @primeiro_nome
  puts 'a cidade é' + @cidade
end
