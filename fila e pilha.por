programa
{
	inclua biblioteca Util
	
	cadeia filmes[5] = {"Star Wars 1", "Star Wars 2", "Guardiões da Galaxia 1", "Guardiões da Galaxia 2", "Guardiões da Galaxia 3"}
	inteiro remocoes = 0
	inteiro opcaoMenu = 0
	logico sair = falso
	inteiro posicaoTopo = 0
	inteiro posicaoFim = 4
	funcao inicio()
	{
		enquanto (nao sair) {
			menu()
			escolha (opcaoMenu) {
				caso 1:
					verFilmes()
					pare
				caso 2:
					removerUltimoFilme()
					pare
				caso 3:
					removerPrimeiroFilme()
					pare
				caso 4:
					verRemocoes()
					pare
				caso 5:
					se (verificaListaVazia()) {
						limpa()
						escreva("Saindo......")
						sair = verdadeiro
					} senao {
						limpa()
						escreva("Remova todos os filmes para sair")
						esperarLeitura()
					}
					
			}
		}
	}
	funcao menu() {
		limpa()
		escreva("\n===== Menu =====\n")
		escreva("1. Ver filmes\n")
		escreva("2. Remover ultimo filme (Pilha)\n")
		escreva("3. Remover primeiro filme (Fila)\n")
		escreva("4. Ver remoções\n")
		escreva("5. Sair\n")
		leia(opcaoMenu)
	}
	funcao verFilmes() {
		limpa()
		escreva("\n===== Filmes =====\n")
		se (verificaListaVazia()) {	
			escreva("Lista Vazia!\n")
		} senao {
			para (inteiro indice = 0; indice < 5; indice += 1) {
				se (indice > posicaoFim ou indice < posicaoTopo) {		
					
				} senao {
					cadeia nomeFilme = filmes[indice]
					inteiro posicao = indice+1
					escreva(posicao+". "+nomeFilme+"\n")
				}
			}
		}
		esperarLeitura()
	}
	
	funcao removerUltimoFilme() {
		limpa()
		se(verificaListaVazia()) {
			escreva("Não é possivel remover o ultimo filme, lista vazia!")
		} senao {
			cadeia nomeFilme = filmes[posicaoFim]
			posicaoFim--
			remocoes++
			escreva(nomeFilme+" removido")
		}
		esperarLeitura()
	}
	funcao removerPrimeiroFilme() {
		limpa()
		se (verificaListaVazia()) {
			escreva("Não é possivel remover o primeiro filme, lista vazia!")
		} senao {	
			cadeia nomeFilme = filmes[posicaoTopo]
			posicaoTopo++
			remocoes++
			escreva(nomeFilme + " removido")
		}
		esperarLeitura()
	}
	funcao verRemocoes() {
		limpa()
		escreva("===== Remoções ===== \n")
		para (inteiro indice = 0; indice < 5; indice += 1) {
			se (indice > posicaoFim ou indice < posicaoTopo) {
				escreva(filmes[indice] + "\n")
			}
		}
		esperarLeitura()
	}
	funcao logico verificaListaVazia() {
		inteiro qtdFilmes = Util.numero_elementos(filmes)
		se (remocoes == qtdFilmes) {
			retorne verdadeiro
		} senao {
			retorne falso
		}
		
	}
	funcao esperarLeitura() {
		cadeia esperar
		escreva("\nPressione [ENTER]")
		leia(esperar)
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1256; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */