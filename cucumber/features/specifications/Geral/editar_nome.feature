#language: pt

Funcionalidade: Editar o nome do usuário na plataforma

Eu, como usuário
Desejo editar o nome
Para que eu possa obter um melhor engajamento.

@carrega_dados
@login
@editar_nome
Cenario: Editar nome com sucesso
Dado acesse a pagina de configurações com o usuario
Quando edito o nome
E enviar a auteração
Entao o sistema exibe uma mensagem 
"""

Seus dados foram alterados com sucesso!
""" 
E devera exibir o nome do usuário na home

