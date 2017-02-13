
class Home < SitePrism::Page
  set_url "http://10.0.0.201/ecglobalnet/"

#   set_url_matcher /google.com\/?/
end

class CadastroEclobal < SitePrism::Page

  element :email, "input[id='username-check']"
  element :senha, "input[id='password']"
  element :primeiro_nome, "input[id='firstname']"
  element :sobrenome, "input[id='lastname']"
  element :day, "input[id='day']"
  element :month, "input[id='month']"
  element :year, "input[id='year']"
  element :location, "input[id='location-autocomplete']"
 
end