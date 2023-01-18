def lancer_de()
  prng = Random.new
  prng.rand(1..6).to_i
end

def descend(marche)
  if marche == 0 then
    step = marche
  elsif 
    step = marche - 1
  end
  puts "Dommage, tu descends d'un cran sauf si tu étais déjà en bas :) Tu es maintenant en position #{step}"
  puts ""
  return step
end

def monte(marche)
  marche += 1
  puts "Bravo !! Tu montes. Tu es maintenant en position #{marche}"
  puts ""
  return marche
end

def rien(marche)
  puts "Tu n'avances pas ! Mais tu ne recules pas non plus, retente ta chance. Tu es toujours en position #{marche}"
  puts ""
  return marche
end

def jeu()
  puts "Nouvelle partie !"
  puts ""
  marche = 0
  compteur = 0
  while marche < 10
    de = lancer_de
    puts "Voici le résultat de ton lancé du dé : #{de}"
    if de == 1 then
      marche = descend(marche)
    elsif de == 2 || de == 3 || de == 4 then
      marche = rien(marche)
    elsif de == 5 || de == 6 then
      marche = monte(marche)
    end
  compteur += 1
  end
  puts "Tu es arrivée en haut de l'escalier !!"
  puts "Le jeu est terminé, t'es le best"
  puts ""
  return compteur
end

def average_finish_time(nombre_partie)
  arr= Array.new
  nombre_partie.times do
    compteur = jeu
    puts "Nombre de lancées pour finir la partie : #{compteur}"
    arr.push(compteur)
  end
  # somme = arr.sum
  # size = arr.size
  # puts "Somme = #{somme}"
  # puts "Longueur = #{size}"
  puts ""
  puts "Données de l'array : #{arr}"
  puts "Moyenne de lancée pour gagner la partie : #{arr.sum.to_f/arr.size.to_f}"
  return (arr.sum/arr.size)
end

def perform (nombre_partie)
  average_finish_time(nombre_partie)
end

puts "Combien de partie voulez-vous effectuer ? "
print ">"
nombre_partie = gets.chomp.to_i
perform(nombre_partie)
