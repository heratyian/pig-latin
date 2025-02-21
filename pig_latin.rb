class PigLatin
  VOWELS = %w[a e i o u]
  # TODO: "xr" and "yt"

  # CONSONANTS = %w[b c d f g h j k l m n p q r s t v w x y z]

  def self.translate(input)
    first_char = input.chars.at(0)

    # rule 1:
    # If a word begins with a vowel,
    # or starts with "xr" or "yt",
    # add an "ay" sound to the end of the word.
    # output = input + "ay"
    if VOWELS.include? first_char
      return input + "ay"

    # TODO: elsif starts with "xr" or "yt"
    else # consonant

      # at this point, first character is a consonant

      # rule 2:
      # If a word begins with one or more consonants,
      # first move those consonants to the end of the word and
      # then add an "ay" sound to the end of the word.
      # eg "pig" -> "igpay"


      characters = input.chars

      # # first n consonants
      # onset = []

      # # "yellow" -> "ellowyay"
      # # "rhythm" -> "ythmrhay"

      # # TODO: check for infinite loop eg: 'y' is used as a vowel
      # while VOWELS.none? characters.at(0)
      #   next_char = characters.shift
      #   onset.push(next_char)
      # end

      # return characters.join('') + onset.join('') + "ay"


      output = []
      characters.each_with_index do |char, i|
        # if char is a vowel
        #   done, add 'ay' to the end

        if i > 0
          # y can be used as a vowel
        else
          # y can't be used as a vowel
        end
      end



      output.join('') + 'ay'
    end

    ""
  end
end
