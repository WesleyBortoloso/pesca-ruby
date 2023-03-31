acude = [] # inicializa um array vazio para ser preenchido com informações do usuário
i = 0 # inicializa uma variavél contadora
jogadas = 5 # define um número de jogadas para verificar quando o jogo acabou
peixes = %w[dourado lambari baiacu carpa pacu tilápia traíra] # define os tipos de peixes disponíveis no açude
pescados = 0 # inicializa o número de peixes pescados
tamanho_acude = 0 # inicializa o tamanho do açude para verificações de entrada

system('clear') # limpa o console

puts 'Bem vindo ao pesque-pague Bola 8 🎱🎣' # inicializa o jogo
puts '🪝🪝🪝🪝🪝🪝🪝🪝🪝🪝🪝🪝🪝🪝' # inicializa o jogo

while tamanho_acude < 1 || tamanho_acude > 10 # verifica se o número digitado do tamanho do açude esta entre 1 e 10
  puts 'Escolha um açude de tamanho de 1 a 10 para iniciar:' # solicita para o usuário inserir um tamanho pro açude
  tamanho_acude = gets.chomp.to_i # guarda o valor inserido pelo usuário
end

system('clear') # limpa o console

while i <= tamanho_acude # enquanto o tamanho do acude for maior ou igual a variável contadora o código sera executado
  acude.append(rand(1..20)) # popula o açude com número aleatórios entre 1 e 20
  i += 1 # incrementa a variável contadora em 1
end

while jogadas != 0 # verifica se existem jogadas para continuar a partida
  puts "Você possui #{jogadas} jogadas, escolha um número entre 1 e 20 para jogar a isca!" # informa o usuário o número de jogadas restante e solicita uma jogada
  jogada = gets.chomp.to_i # solicita para que o usuário jogue a isca em um número desejado
  if acude.include?(jogada) # verifica se o número inserido pelo usuário esta presente no array de açude
    system('clear') # limpa o console
    puts "Parabéns, você fez uma bela jogada e pescou um(a) #{peixes.sample}!" # informa o usuário sobre a conquista e escolhe um peixe aleatório para exibir
    acude.delete(jogada) # remove o número premiado do açude
    pescados += 1 # incrementa o número de pescados em 1
  else
    system('clear') # limpa o console
    puts 'Não foi dessa vez!' # informa o usuário que não foi possível pescar com o número escolhido
  end
  puts '' # pula linha
  puts "Total de peixes pescados: #{pescados}" # informa o total de peixes pescados no fim da rodada
  puts '' # pula linha
  jogadas -= 1 # decrementa um das jogadas disponíveis
  next
end

if jogadas.zero? # verifica se as jogadas chegaram a 0
  system('clear') # limpa o console
  puts 'Boa pescador, você concluiu todas as jogadas!' # finaliza o jogo
  puts '' # finaliza o jogo
  puts "Na pescaria de hoje você pescou #{pescados} peixes" # finaliza o jogo
end
