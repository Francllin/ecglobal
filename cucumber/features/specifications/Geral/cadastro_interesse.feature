#language: pt

Funcionalidade: Cadastro de usuário na rede social ecglobal

Como usuário, 
eu gostaria de informar meus interesses e conexões no momento do cadastro
para que eu possa receber conteúdo relevante e continuar engajado

@carrega_dados
@carrega_cadastro_user
@cadastro_interesse
Cenario: Cadastro de interesses com sucesso
Dado que eu acesse a pagina de cadastro de interesse
Quando eu seleciono os campos de interesses
E enviar o cadastro de interesses
Entao é apresentado a tela da home logada