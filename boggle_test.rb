def find_word(array, word)
  array.each_with_index do |row, row_index|
    row.each_with_index do |col, col_index|
      p col
      if col == word[0]
        return row_index, col_index
      end
    end
  end

end

def cont_search(array, word, location)
  if array[(location[0] - 1)][(location[1])] == word[1]
    return location[0] - 1, location[1]
  elsif array[(location[0] - 1)][(location[1] - 1)] == word[1]
    return location[0] - 1, location[1] - 1
  elsif array[(location[0])][(location[1] - 1)] == word[1]
    return location[0], location[1] - 1
  elsif array[(location[0] + 1)][(location[1] - 1)] == word[1]
    return location[0] + 1, location[1] - 1
  elsif array[location[0] + 1][(location[1])] == word[1]
    return location[0] + 1, location[1]
  elsif array[(location[0] + 1)][(location[1] + 1)] == word[1]
    return location[0] + 1, location[1] + 1
  elsif array[(location[0])][(location[1] + 1)] == word[1]
    return location[0], location[1] - 1
  elsif array[(location[0] - 1)][(location[1] + 1)] == word[1]
    return location[0] - 1, location[1] + 1
  else
    return "failed"
  end
end
