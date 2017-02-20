Before '@login' do
  @home.load
  @i = 1
      @login.username.set("f83e6a96@mohmal.im")
      # @datadriver[@i]
      @login.passlogin.set(@senha)
      @login.entrar.click
end

Before '@loginloop' do
  @home.load
  @i = 1
    while @i <= 10
      @login.username.set(@datadriver[@i])
      @login.passlogin.set(@senha)
      @login.entrar.click
      @i = @i+1 

    end
end

