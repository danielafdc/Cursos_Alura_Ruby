def da_boas_vindas
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"
	nome = gets
	puts "\n\n\n\n\n\nComeçaremos o jogo para você, " + nome
end


def sorteia_numero_secreto
	puts "Escohendo um número secreto entre 0 e 200..."
	sorteado = 175
	puts "Escolhido... que tal adivinhar hoje nosso número secreto? \n\n\n\n"
	#return sorteado - Se uma função retorna alguma coisa, ele retorna o que está na última linha. Portanto eu posso tirar o return
	sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
	puts"\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Entre com o número"
	chute = gets #aqui ele lê uma string
	puts "Será que acertou? Você chutou " + chute
	chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
	acertou = numero_secreto == chute

if acertou
	puts "Acertou!"
	return true
end
	maior = numero_secreto > chute
	if maior
		puts "O número secreto é maior!"
			else
		puts "O número secreto é menor!"
			end

	#return false - Não precisa usar a palavra return aqui
	false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto



limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
	#chute = pede_um_numero(tentativa, limite_de_tentativas) - Não precisa dos parenteses
	#if verifica_se_acertou(numero_secreto, chute) - Nem aqui
	chute = pede_um_numero tentativa, limite_de_tentativas
	if verifica_se_acertou numero_secreto, chute
		break
end

#melhorando o código...
#if chute.to_i == numero_secreto #aqui ele transforma a string em número inteiro
#	puts "Acertou!"
end