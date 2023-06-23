programa
{
	inclua biblioteca Util
	const inteiro qtdRuas = 3
	const inteiro qtdCasas = 10
	inteiro locacao[3][10]
	cadeia dadosLocacao[3][10]
	
	
	funcao inicio()
	{
		preencheRuas()
		preencheCasas()
		menu()
	}
	funcao preencheRuas() {
		cadeia ruas[qtdRuas] = {"Rua das pedras", "Rua da lagoa", "Rua do cao"}
		para(inteiro linha=0; linha < qtdRuas; linha++){
			dadosLocacao[linha][0] = ruas[linha]
		}
	}
	funcao preencheCasas() {
		para(inteiro linha=0; linha < qtdRuas; linha++){
			para(inteiro coluna=1; coluna < qtdCasas; coluna++){
				dadosLocacao[linha][coluna] = ""+coluna
			}
		}
	}
	funcao menu() {
		logico finalizar = falso
		enquanto (nao finalizar) {
			escreva("\n\n========== MENU ==========\n")
			escreva("1. Cadastrar locação\n")
			escreva("2. Excluir locação\n")
			escreva("3. Visualizar locações\n")
			escreva("4. Sair\n")
			inteiro opcao = 0
			leia(opcao)
	
			escolha(opcao) {
				caso 1: 
					cadastro()
					pare
				caso 2: 
					exclusao()
					pare
				caso 3:
					visualizar()
					pare
				caso 4:
					finalizar=verdadeiro
					limpa()
					escreva("Saindo....")
					pare
				caso contrario: 
					escreva("Opcao não definida")
					menu()
				pare
			}
	}
	}
	funcao cadastro() {
		inteiro coluna, casa
		limpa()
		escreva("====== Ruas ======\n")
		listaRuas()
		escreva("Digite o numero da rua: ")
		leia(coluna)
		se(coluna>qtdRuas ou coluna<1) {
			escreva("Rua inexistente\n")
		} senao {
			escreva("Digite o numero da casa: ")
			leia(casa)
			se (casa>qtdCasas ou casa<1) {
				escreva("Casa inexistente\n")
			} senao {
				inteiro rua = coluna-1
				locacao[rua][casa-1] = 1
				escreva("Casa "+casa+" da rua "+rua+" alocada!\n")
			}
		}
	}
	funcao listaRuas() {
		para(inteiro i=0; i < qtdRuas; i++){
			inteiro indice = i+1
			escreva(indice+". "+dadosLocacao[i][0]+"\n")
		}
	}
	funcao exclusao() {}
	funcao visualizar() {
		para(inteiro rua=0; rua < qtdRuas; rua++){
			escreva("\n"+dadosLocacao[rua][0]+"\n")
			para(inteiro casa=1; casa < qtdCasas; casa++){
				logico alocado = locacao[rua][casa-1] == 1
				se (nao alocado) {
					escreva("\n[ ]"+casa+"")
				} senao {
					escreva("\n[X]"+casa+"")
				}
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2200; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {locacao, 6, 9, 7}-{dadosLocacao, 7, 8, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */