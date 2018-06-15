def da_boas_vindas
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n\n\nComeçaremos o jogo para você, #{nome}" #+ nome- modificado para a interpolação de strings
end


def sorteia_numero_secreto
	puts "Escohendo um número secreto entre 0 e 200..."
	sorteado = 175
	puts "Escolhido... que tal adivinhar hoje nosso número secreto? \n\n\n\n"
	sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
	puts"\n\n\n\n"
	puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
	puts "Chutes até agora: #{chutes}" 
	puts "Entre com o número"
	chute = gets.strip
	puts "Será que acertou? Você chutou #{chute}"
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
	false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto


pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []
#total_de_chutes = 0 eliminar essa variável para usar o size no trecho abaixo

for tentativa in 1..limite_de_tentativas
	chute = pede_um_numero chutes, tentativa, limite_de_tentativas
	#chutes[total_de_chutes] = chute - eliminando essa linha e colocando abaixo
	chutes << chute
	#total_de_chutes += 1 # é a mesma coisa que total_de_chutes = total_de_chutes + 1 - elininando essa linha
	pontos_a_perder = (chute - numero_secreto) / 2
	pontos_ate_agora -= pontos_a_perder
	if verifica_se_acertou numero_secreto, chute
		break
end
end
puts "Você ganhou #{pontos_ate_agora} pontos."