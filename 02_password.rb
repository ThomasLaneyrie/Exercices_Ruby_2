def signup()
  puts "Merci d'entrer le password pour initialisation :"
  print "> "
  gets.chomp.to_s
end

def login(password)
  try = ""
  while try != password
    puts "Pour vous connecter agent secret, merci d'indiquer votre password :"
    print "> "
    try = gets.chomp.to_s
  end
end

def  welcome_screen()
  puts "Bravo ! Tu viens d'accéder à l'écran secret"
  0.upto(100) do print "#" end
  puts ""
  puts "Informations de la NASA TOP SECRET"
  0.upto(20) do puts "" end
end  

def perform ()
  password = signup
  login(password)
  welcome_screen
end

perform


