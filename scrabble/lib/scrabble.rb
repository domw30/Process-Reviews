class Scrabble

  LETTERS = { 1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
              2 => ['D', 'G'],
              3 => ['B', 'C', 'M', 'P'],
              4 => ['F', 'H', 'V', 'W', 'Y'],
              5 => ['K'],
              8 => ['J', 'X'],
              10 => ['Q', 'Z']
  }

  def initialize(string)
    @string = string
  end

  def score
    score = 0
    if @string != nil
      @string.each_char do |letter|
        LETTERS.each_pair do |value, key|
          score += value if key.include? letter.upcase
        end
      end
    end
    score
  end
end
