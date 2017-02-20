#language: pt

Funcionalidade: Palavras e frases proibidas para a Feed

Como moderador da rede
Eu gostaria de adicionar palavras e frases proibidas
Para evitar que o painelista infrija as normas da comunidade ao postar uma experiência ou comentário;

##Criterios de aceitação##
# 1 - Formulário para adição de palavras proibidas; (Não tem)
# 2 - Listagem de palavras proibidas;
# 3 - Possibilidade de exclusão de criação de palavras proibidas;
# 4 - Filtro de palavras por comunidade;
# 5 - Impossibilidade de postar experiências ou comentários contendo palavras proibidas, deve ser analisado após clicar em Publicar e o texto original deve ser mantido no formulário;
# 6 - Feedback para o usuário ao tentar postar palavras proibidas;
# 7 - Registrar usuário que tentar postar palavra proibida (Qual palavra e quantas vezes tentou e a data);

@carrega_dados
@cadastro_proibidas
Cenario: Cadastro com sucesso de palavas probidas
Dado que eu acesse a pagina de cadastro de palavras proibidas
Quando eu informar uma palavra para bloqueio
E confimar o cadastro da palavra.
Entao a palavra deve ser exibida no dashboard

@listagem_palavras
Cenario: Listagem de palavras proibidas
Dado que eu acesse a pagina de cadastro de palavras proibidas
Entao deverá ser exibida todas as palavras proibidas no dashboard

@filtro_palavras
Cenario: Filtro de palavras por comunidade
Dado que eu acesse o dashboard de palavras proibidas
Quando filtro as palavras por comunidade
Entao deverá ser exibida somente as palavras para a respequitiva comunidade

@excluir_palavras
Cenario: Excluir palavras proibidas
Dado que eu acesse a pagina de cadastro de palavras proibidas
E e confirme a exclusão de uma palabra proibida do dashboard
Entao não dever ser exibida na tela de dashboard

@impossibilidade_palavras
Cenario: Impossibilidade de postar experiências ou comentários contendo palavras proibidas
Dado que eu acesse a pagina home
Quando criado uma publicação e um comentario com palavra proibida
E confirmar a publicação  
Entao será apresentado uma mensagem para o usuário
#resta a mensagem
"""

"""


@registro_palavras
Cenario: Registrar usuário que tentar postar palavra proibida
Dado que eu acesse o banco
Quando criado a query para verificar o registro de usuário que tentou postar uma palavra proibida
E confirmar   
Entao será apresentado o registro do usuário