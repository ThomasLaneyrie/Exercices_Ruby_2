def ask_first_name
  puts "Quelle est ton nom ?"
  return gets.chomp
end


def first_name(name)
   puts "Bonjour, #{name} !"
 end

firstname = ask_first_name
first_name(firstname)
