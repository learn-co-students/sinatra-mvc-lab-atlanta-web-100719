class PigLatinizer
  def piglatinize(words)
    pig_array = words.split.map do |text|
      first_vowel = text.downcase.match(/a|e|i|o|u/)
      first_vowel_index = text.downcase.index(first_vowel.to_s)

      if text.downcase.start_with?(/[aeiou]/)
        new_word = text + "way"
      else
        new_word = text[first_vowel_index..(text.length - 1)] + text[0..first_vowel_index - 1] + "ay"
      end
    end
    pig_array.join(" ")
  end
end
