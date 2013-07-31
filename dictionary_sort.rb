array = []

puts "Type a word:"
word = gets.chomp
array << word

while word != ""

  puts "Type another word (or press enter to finish):"
  word = gets.chomp
  array << word

end

puts array.sort_by {|x| x.downcase}

