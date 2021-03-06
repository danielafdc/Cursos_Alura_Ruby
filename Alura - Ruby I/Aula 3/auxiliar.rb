def da_boas_vindas
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n\n\nComeçaremos o jogo para você, #{nome}"
	nome
end

def pede_dificuldade
	puts "Qual o nível de dificuladade que deseja? (1 fácil, 5 difícil)"
	dificuladade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
	case dificuldade
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 100
    when 4
        maximo = 150
    else
        maximo = 200
    end
	puts "Escohendo um número secreto entre 0 e #{maximo -1}..."
	sorteado = rand(maximo) + 1
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


nome = da_boas_vindas
dificuldade = pede_dificuldade

while quer_jogar
	joga nome, dificuldade
end

def quer_jogar
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	quero_jogar.upcase == "S"
end

def joga(nome, dificuldade)
numero_secreto = sorteia_numero_secreto dificuldade

pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas
	chute = pede_um_numero chutes, tentativa, limite_de_tentativas
	chutes << chute
	if nome == "Dani"
		puts "Acertou"
		break
	end
	pontos_a_perder = (chute - numero_secreto).abs / 2.0
	pontos_ate_agora -= pontos_a_perder
	if verifica_se_acertou numero_secreto, chute
		break
end
end
puts "Você ganhou #{pontos_ate_agora} pontos."
end