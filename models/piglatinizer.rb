class PigLatinizer
  attr_accessor :user_phrase

  def piglatinize(string)
    string_array = string.split(" ")
    string_array.map do |word|
      if /[aeiou]/.match(word[0].downcase) && /[bcdfghjklmnpqrstvwxz]/.match(word[1])
        word+"way"
      elsif /[aeiou]/.match(word[0].downcase) && /[aeiou]/.match(word[1])
        word+"way"
      elsif /[aeiou]/.match(word[0].downcase)
        word[1, word.length - 1]+word[0]+"way"
      elsif /[bcdfghjklmnpqrstvwxz]/.match(word[1].downcase) && /[bcdfghjklmnpqrstvwxz]/.match(word[2].downcase)
        word[3, word.length - 2]+word[0]+word[1]+word[2]+"ay"
      elsif /[bcdfghjklmnpqrstvwxz]/.match(word[1].downcase)
        word[2, word.length - 2]+word[0]+word[1]+"ay"
      else
        word[1, word.length - 1]+word[0]+"ay"
      end
    end.join(" ")
  end
end
