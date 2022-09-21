#!/bin/bash
menu

echo "Digite o numero da questão que deseja ver"
read questao

case $questao in
1) echo "Exercício 1
 Elaborar um script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações:
 - O maior dos números recebidos;
 - O somatório dos números recebidos.;;
2) echo "Exercício 2
 Elaborar um script que solicite a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema
 (desconsiderando as diferenças entre maiúsculas e minúsculas). 
" ;;
3) echo "Exercício 3
 Escreva um script que receba como parâmetro o caminho de um diretório e liste seus arquivos e diretórios um a um. Se for diretório, deve escrever "dir" ao lado do diretório." ;;
4) echo "Exercício 4
 Elaborar um script que receba um número como parâmetro e imprima todos os números pares de 
O até o número informado como parâmetro" ;;
5) echo "Exercício 5
 Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe.
 Em caso afirmativo, imprimir o seu tamanho em bytes. " ;;
6) echo "Exercício 6
 Elaborar um script que apresente ao usuário um menu com as seguintes opções:
 1 - Exibir status da utilização das partições do sistema;
 (df -h) 2 - Exibir relação de usuário logados;
 (who) 3 - Exibir data/hora;
 (date) 
4 - Sair. 
Informe sua opção: 
As linhas acima serão apresentadas aos usuários até que seja escolhida a opção 4 (Sair).
 Caso seja escolhida alguma opção entre 1 e 3, serão executados os comandos correspondentes e o resultado da execução será apresentado ao usuário. Caso seja informado algum número que não corresponde às opções de menu disponíveis, exibir na tela a mensagem "
Opção não disponível.
 Tente outra vez.". 
" ;;
7) echo "Exercício 7
 Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que serão utilizados o laboratório 06.
 Essas datas baseiam-se nos dias da semana em que são ministradas as aulas.
 Como nossa disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível.
 Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação.
 Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão ministradas nossas aulas." ;;
8) echo "Exercício 8
 Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondente à primeira palavra encontrada no conteúdo do próprio arquivo. " ;;
9) echo "Exercício 9
 Desenvolva um script que receba uma lista de palavras como parâmetros e exiba, como resultado, essas palavras ordenadas." ;;
10) echo "Exercício 10
 Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. Ao ser informada a palavra "sair", o script é finalizado." ;;
11)echo "Exercício 11
 Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros: " ;;
12)echo "Exercício 12 
Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home. " ;;
13)echo "Exercício 13
 Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado por cada usuário do sistema (campo 7). Desenvolva um script que informe qual é o shell mais utilizado. " ;;
*) echo "Opcao Invalida!" ;;
esac
