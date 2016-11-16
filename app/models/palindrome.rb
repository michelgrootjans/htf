class Palindrome
  def next(word)
    next_word = word + 1
    while(true)
      return next_word if palindrome?(next_word)
      next_word += 1
    end
  end
  def palindrome?(word)
    word.to_s.reverse == word.to_s
  end
end
