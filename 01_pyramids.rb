def half_pyramide(number)
	arr=Array.new()	
	for num_ligne in 1..number
		element = ""
		for i in 1..num_ligne
			element = "#" + element
		end
		for i in 1..(number - num_ligne)
			element = " " + element
		end
		arr.push(element)
	end
  return arr
end


def full_pyramide(number)
	nombre_carac=number*2 -1
	arr=Array.new()

	for num_ligne in 1..number
		element = ""
		nombre_etoile_ligne = 2*num_ligne -1
		nombre_blanc = (nombre_carac-nombre_etoile_ligne)/2
		for i in 1..nombre_blanc 
			element = " " + element
		end
		for i in 1..nombre_etoile_ligne
			element = element + "#"
		end
		for i in 1..nombre_blanc 
			element = element + " "
		end
		arr.push(element)
	end
  return arr
end


def etage
  number = 0
  while number.even?
    puts "Combien d'étages souhaites-tu dans ta pyramide ? Entre un nombre impair !"
    print "> "
    number = gets.chomp.to_i
    if number.even? then
      puts "Je t'ai dis un chiffre impair, recommence !"
    end
  end 
  return number
end

def wtf1_pyramide(nombre_etages)
  pyramide = full_pyramide(nombre_etages) + full_pyramide(nombre_etages).reverse()
end

def affichage1(arr)
  puts "voici ta pyramide Ramses :"
  puts arr
end

def wtf_pyramide(nombre_blanc,nombre_diese) #Construit ligne par ligne la pyramide en fonction du nombre de blanc et de diese
  puts (" " * nombre_blanc) + ("#" * nombre_diese) + (" " * nombre_blanc)
end

#--------------------------------------------------------------------------------------
# Programme appelant les def :
nombre_etages_total=etage #Définir le nombre d'étage de la pyramide
puts "voici ta pyramide Ramses :"
# Partie haute et milieu
numero_etage=1
while numero_etage <= ((nombre_etages_total/2)+1)
  nombre_diese = (numero_etage * 2) - 1
  nombre_blanc = (nombre_etages_total - nombre_diese)/2
  wtf_pyramide(nombre_blanc,nombre_diese)
  numero_etage += 1
end

#Partie basse
while numero_etage <= nombre_etages_total
  nombre_diese = (nombre_etages_total - numero_etage)* 2 + 1
  nombre_blanc = (nombre_etages_total - nombre_diese)/2
  wtf_pyramide(nombre_blanc,nombre_diese)
  numero_etage += 1
end

