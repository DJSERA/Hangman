class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]


  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    
    @secret_word= Hangman.random_word
    @guess_word = array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end
  
  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

def already_attempted?(char)
@attempted_chars.include?(char)
  end


  def get_matching_indices (char)
    matching_indices = []
      @secret_word.each.with_index do |secret_char, i|
        if secret_char == char
          matching_indices << i
        end
      end

matching_indices
  end

  def fill_indices (char, indices)
    indices.each do |index|
      @guess_word[index] = char
    end
  end

def try_guess (char)
  self.already_attempted?(char)
  p "that has already been atempted"
  return false
  end
matches = self.get_matching_indices(char)
self.matching_indices(char, matches)
@remaining_incorrect_guesses -= 1 if matches.empty?
true
  end

end

def ask_user_for_guess
  p "Enter a char:"
  char = gets.chomp
  self.try_guess(char)
  end

  def win?
    @guess_word.join("") == @secret_word
    p "WIN"
    return true
  else
    return false
    end
  

def lose?
@remaining_incorrect_guesses == 0
p "LOSE"
return true
else 
  return true
  end


def game_over?
  self.win? || self.lose?
  p @secret_word
  return true
else 
  return false
  end
