# encoding: utf-8

# Part of split into sentences and words
module LexicalUnits
  # Split text into sentences and each into words
  #
  #   self.words_and_sentences('Lorem, ipsum. Dolor?') #=>
  #   [
  #     ['Lorem', 'ipsum'],
  #     ['Dolor']
  #   ]
  def self.words_and_sentences(text)
    LexicalUnits.sentences(text).map do |sentence|
      LexicalUnits.words(sentence)
    end
  end
end
