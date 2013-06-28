require 'pry'
def find_word(array, word)
  array.each_with_index do |row, row_index|
    row.each_with_index do |col, col_index|
      #p col
      if col.downcase == word[0].downcase
        location = [row_index, col_index]
        cont_search(array, word, location)
        #return location
        #return row_index, col_index
      end
    end
  end

end

def cont_search(array, word, location)
  #@additional_array = [location]
  @word_hash = {array[location[0]][location[1]] => location}
  (1...word.size).each do |i|
    if array[(location[0] - 1)][(location[1])] == word[i]
      #@additional_array << [(location[0]-1),(location[1])]
      location = [(location[0]-1),(location[1])]
      @word_hash[word[i]] = location
      #return location[0] - 1, location[1]
    elsif array[(location[0] - 1)][(location[1] - 1)] == word[i]
      #@additional_array << [(location[0]-1),(location[1]-1)]
      location = [(location[0]-1),(location[1]-1)]
      @word_hash[word[i]] = location
       #return location[0] - 1, location[1] - 1
    elsif array[(location[0])][(location[1] - 1)] == word[i]
      #@additional_array << [(location[0]),(location[1]-1)]
      location = [(location[0]),(location[1]-1)]
      @word_hash[word[i]] = location
      #return location[0], location[1] - 1
    elsif array[(location[0] + 1)][(location[1] - 1)] == word[i]
      #@additional_array << [(location[0]+1),(location[1]-1)]
      location = [(location[0]+1),(location[1]-1)]
      @word_hash[word[i]] = location
      #return location[0] + 1, location[1] - 1
    elsif array[location[0] + 1][(location[1])] == word[i]
      #@additional_array << [(location[0]+1),(location[1])]
      location = [(location[0]+1),(location[1])]
      @word_hash[word[i]] = location
      #return location[0] + 1, location[1]
    elsif array[(location[0] + 1)][(location[1] + 1)] == word[i]
      #@additional_array << [(location[0]+1),(location[1]+1)]
      location = [(location[0]+1),(location[1]+1)]
      @word_hash[word[i]] = location
      #return location[0] + 1, location[1] + 1
    elsif array[(location[0])][(location[1] + 1)] == word[i]
      #@additional_array << [(location[0]),(location[1]+1)]
      location = [(location[0]),(location[1]+1)]
      @word_hash[word[i]] = location
      #return location[0], location[1] + 1
    elsif array[(location[0] - 1)][(location[1] + 1)] == word[i]
      #@additional_array << [(location[0]-1),(location[1]+1)]
      location = [(location[0]-1),(location[1]+1)]
      @word_hash[word[i]] = location
      #return location[0] - 1, location[1] + 1
    else
      binding.pry
      return "failed"
    end
  end
 #p @additional_array
  p @word_hash
end


array = [["P", "Q", "R", "L"], ["M", "C", "L", "T"], ["W", "A", "N", "T"], ["R", "C", "T", "Z"]]

word = 'CAT'

cont_search(array, word, [1,1])
