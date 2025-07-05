class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  # If the word end with punctuation, should keep end-of-word punctuation intact, todo this by checking the last character of the word.
  # For example, the string "The quick brown fox" should become "The marklar marklar fox".
  # The string "Down goes Frazier" should become "Down goes Marklar".     
  # eg. "The quick brown fox" should become "The marklar marklar fox
  # eg. "Down goes Frazier" should become "Down goes Marklar"
  # eg. "Monday is Martin Luther King day" should become "Marklar is Marklar Marklar King day"
  # eg. "How is the weather today? I have not been outside." should become "How is the marklar marklar? I have not been marklar."
  def self.marklar(str)
    # TODO: Implement this method 
    # Split the string into words, check each word's length and capitalization,
    # and replace accordingly. If a word is longer than 4 characters,
    # replace it with "marklar" or "Marklar" based on its capitalization.  
    # should keep end-of-word punctuation intact.       
    str.split.map do |word|
      if word.length > 4
        if word[0] =~ /[A-Z]/
          "Marklar" + (word[-1] =~ /[[:punct:]]/ ? word[-1] : "")
        else
          "marklar" + (word[-1] =~ /[[:punct:]]/ ? word[-1] : "")
        end
      else
        word
      end
    end.join(" ")
 
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fibonacci_sequence(nth).select { |num| num.even? }.sum
  end

  private

  # Return the nth Fibonacci number
  # eg. fibonacci(6) should return 8
  def fibonacci(nth)   
    return 0 if nth <= 0
    return 1 if nth == 1
    return 1 if nth == 2

    a, b = 0, 1
    (nth - 1).times do
      a, b = b, a + b
    end
    b
  end

  # Return the nth Fibonacci number recursively
  # eg. recursive_fibonacci(6) should return 8
  def recursive_fibonacci(nth)
    return 0 if nth <= 0
    return 1 if nth == 1
    return 1 if nth == 2

    recursive_fibonacci(nth - 1) + recursive_fibonacci(nth - 2)
  end 


  # Return an array of Fibonacci numbers up to the "nth" term in the sequence
  # eg. fibonacci_sequence(6) should return [1, 1, 2, 3, 5, 8]
  def fibonacci_sequence(nth)
    (1..nth).map { |i| fibonacci(i) }
  end

end
