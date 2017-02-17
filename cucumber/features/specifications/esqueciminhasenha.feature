#language: pt

Funcionalidade: Enviar uma nova senha quando a mesma for esquecida

Como usuário, 
eu gostaria de solicitar uma nova senha quando esquecer da mesma
para que eu possa acessar a plataforma 

@carrega_dados
# @login_email
@cadastroesqueciminhasenha
@esqueci_senha
Cenario: solicitar senha nova
Dado que eu selecione o link esqueci minha senha
Quando eu preencho o campo e-mail
E enviar a solicitação da nova senha
Entao eu devo visulaizar a nova senha 
E poder logar na plataforma com a nova senha