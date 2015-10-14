class Scrabble
  def letter_score(letter)
    case letter.downcase
    when "a", "e", "i", "o", "u", "l", "n", "r", "s", "t"
      return 1
    when "d", "g"
      return 2
    when "m", "b", "c", "p"
      return 3
    when "f", "h", "v", "w", "y"
      return 4
    when "k"
      return 5
    when "j", "x"
      return 8
    when "q", "z"
      return 10
    else
      return 0
    end
  end
  #SCORE = 0
  def word_score(word)
    score = 0
    word.split("").each do |letter|
      letter = letter_score(letter)
      score += letter
    end
    return score
  end

  def highest_word_score(word_list)
    score_array = []
    word_array = []
    word_list.split(",").each do |palabra|
      word_array.push(palabra)
      word_total = word_score(palabra)
      score_array.push(word_total)
      end
  combo_array  = word_array.map.with_index { |e,i| e + score_array.to_s[i] }
  return combo_array.sort

  end
end
    #we'll have an array of possible words we can play
    # we want this method to go through each one and score them
    # then compare each score and pick the highest
