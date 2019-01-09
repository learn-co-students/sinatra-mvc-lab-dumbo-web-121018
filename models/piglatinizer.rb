class PigLatinizer

  def piglatinize(sentence)
      word_array = sentence.split(" ")
      word_array.map! do |word|
        letter_array = word.chars
        if word.chars.count == 1
          "#{word}" + "way"
        else
          vowel_index = word.index(/[aeiouAEIOU]/)
          if vowel_index == 0
            "#{word}way"
          else
            "#{letter_array[vowel_index..-1].join}#{letter_array[0...vowel_index].join}ay"
          end
        end
      end
      word_array.join(" ")
  end
end
