# encoding: utf-8
module LexicalUnits
  # Use lexical units inside String class
  module String
    def words
      LexicalUnits.words(self)
    end

    def sentences
      LexicalUnits.sentences(self)
    end

    def words_without_digits
      LexicalUnits.words_without_digits(self)
    end
  end
end
