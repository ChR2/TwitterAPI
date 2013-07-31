
def deaf_grandma

  puts "HELLO SONNY!"
  response = gets.chomp
  yell_response = response.upcase
  end_response = "I love ya, Grandma, but I've got to go." 


  while response != end_response
    if response == yell_response
      puts "NO, NOT SINCE 1983!!"
      response= gets.chomp
    else 
      puts "HUH?! SPEAK UP SONNY!!"
      response= gets.chomp
    end
  end

end
 
# Run our method
deaf_grandma
