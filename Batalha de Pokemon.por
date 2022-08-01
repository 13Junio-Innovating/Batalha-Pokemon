programa
{
	inclua biblioteca Util -->u
	cadeia pokemon, jogador_a
	inteiro vida_jogador, ataque_jogador, cura_jogador, vida_mewtwo, ataque_mewtwo = 40
	caracter certeza = 'n', opcao, opcao_turno, restart = 's'
	
	
	funcao inicio()
	{
		escreva("Olá, bem vindo ao jogo de batalha")
		linha()
		u.aguarde(800)
		
		escreva("Qual é o teu nome?")
		leia(jogador_a)
		linha()
		u.aguarde(500)
		limpa()
		
	enquanto(restart == 's' ou restart == 'S')
	{
		vida_mewtwo = 250
		enquanto(certeza == 'n' ou certeza == 'N')
		{
			escreva(jogador_a+", escolha seu pokemon.\n\n")
			u.aguarde(500)
			escreva("A - Charmeleon \n")
			u.aguarde(500)
			escreva("B - Wartotle \n")
			escreva("C - Ivysaur \n")
			leia(opcao)
			limpa()

			escolha(opcao)
			{
				caso 'A':
				caso 'a':
					pokemon = "Charmeleon"
					vida_jogador = 140
					ataque_jogador = 45
					cura_jogador = 50
					charmeleon()
					u.aguarde(1000)
					continuar()

				pare

				caso 'B':
				caso 'b':
					pokemon = "Wartotle"
					vida_jogador = 170
					ataque_jogador = 35
					cura_jogador = 55
					wartortle()
					u.aguarde(1000)
					continuar()

				pare

				caso 'C':
				caso 'c':
					pokemon = "Ivysaur"
					vida_jogador = 120
					ataque_jogador = 50
					cura_jogador = 50
					ivysaur()
					u.aguarde(1000)
					continuar()

				pare

				caso contrario:
					escreva("Opção invalida \n")
					escreva("Escolha uma das opções A, B ou C \n\n")
					
				}
			}
			escreva("Que legal, agora é hora de batalhar contra o Chefão! \n\n")
			u.aguarde(800)
			escreva("A wild Mewtwo appear!!!\n\n")
			u.aguarde(1500)
			mewtwo()
			u.aguarde(3000)
			limpa()

			escreva(pokemon+", eu escolho você!!!\n\n")
			u.aguarde(2000)
			limpa()

			enquanto(vida_jogador > 0 e vida_mewtwo > 0)
			{
				escreva("Você possui "+ vida_jogador+" de vida \n\n")
				u.aguarde(500)

				escreva("O que você quer fazer nesse turno? \n\n")
				u.aguarde(500)

				escreva("A - Atacar \n")
				u.aguarde(500)

				escreva("B - Curar \n\n")
				u.aguarde(500)
				leia(opcao_turno)
				u.aguarde(500)
				limpa()

				escolha(opcao_turno)
				{
					caso 'A':
					caso 'a':
						vida_mewtwo = vida_mewtwo - ataque_jogador

						escreva("Você atacou o Mewtwo e causou "+ ataque_jogador+" de dano!\n\n")
						mewtwo()
						linha()
						u.aguarde(500)

					pare

					caso 'B':
					caso 'b':
						vida_jogador = vida_jogador + cura_jogador

						escreva("Você se curou e ganhou "+ cura_jogador+" de vida\n\n")
						escreva("Agora você possui "+vida_jogador+" de vida")
						
						linha()
						u.aguarde(500)

					pare

					caso contrario:
								escreva("Cuidado!!!\n Você de novo está tentando a opção errada? \n\n")
								u.aguarde(800)

								escreva("Você disperdiçõu seu turno!")
								u.aguarde(800)
								linha()
								u.aguarde(1000)
								

					
					}
					se(vida_mewtwo >= 0)
					{
						vida_jogador = vida_jogador - ataque_mewtwo

						escreva("Mewtwo atacou e te causou "+ataque_mewtwo+" de dano!\n\n")
						u.aguarde(1000)

						escreva("Sua vida restante: "+vida_jogador)
						linha()
						u.aguarde(500)
						
						}
				}
				final()
				escreva("Deseja tentar novamente?\n")
				escreva("Responda com s ou n \n\n")
				leia(restart)
				se(restart == 's')
				{
					certeza = 'n'
					}
					limpa()
		}
		limpa()

		escreva("Obrigado por batalhar conosco!!!")
		u.aguarde(1000)
	}
	funcao final()
	{
		se(vida_jogador <= 0)
		{
			escreva(jogador_a+" , não foi dessa vez!\n\n")
			u.aguarde(1000)

			escreva("O Mewtwo acabou com você!")
			u.aguarde(1000)
			linha()

			}
		senao se(vida_mewtwo <= 0)
			{
				escreva("Parabens "+jogador_a+" , você derrotou o Mewtwo!\n\n")
				u.aguarde(1000)

				escreva("Agora a insigna dos cria é sua!!!")
				u.aguarde(1000)
				linha()
				}
		}
		funcao mewtwo()
		{
			escreva("Mewtwo")
			u.aguarde(500)

			escreva("\nVida: "+vida_mewtwo)
			u.aguarde(500)

			escreva("\n\nAtaque: "+ataque_mewtwo)
			}
		funcao continuar()
		{
			escreva("\n\nVocê tem certeza da sua escolha?\n")
			escreva("(escreva s ou n)\n")
			leia(certeza)
			limpa()
			
			}
		funcao linha()
		{
			escreva("\n----------------------------------------------------\n\n")
			}
		funcao charmeleon()
		{
			escreva(pokemon)
			u.aguarde(500)

			escreva("\nVida: "+vida_jogador)
			u.aguarde(500)

			escreva("\n Ataque: "+ataque_jogador)
			u.aguarde(500)

			escreva("\n Cura: "+cura_jogador)
			}
		funcao wartortle()
		{
			escreva(pokemon)
			u.aguarde(500)

			escreva("\nVida: "+vida_jogador)
			u.aguarde(500)

			escreva("\n Ataque: "+ataque_jogador)
			u.aguarde(500)

			escreva("\n Cura: "+cura_jogador)
			}
		funcao ivysaur()
		{
			escreva(pokemon)
			u.aguarde(500)

			escreva("\nVida: "+vida_jogador)
			u.aguarde(500)

			escreva("\n Ataque: "+ataque_jogador)
			u.aguarde(500)

			escreva("\n Cura: "+cura_jogador)
			}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 345; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */