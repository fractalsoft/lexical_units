# encoding: utf-8

# Part of split into sentences
module LexicalUnits
  # Split text into sentences
  #
  #   self.words("Lorem, ipsum. Dolor?") #=> ["Lorem, ipsum.", "Dolor?"]
  #   self.words("Lorem! Ipsum dolor?") #=> ["Lorem!", "Ipsum dolor?"]
  def self.sentences(text)
    separators = LexicalUnits.sentence_separators
    regexp = Regexp.new("[^#{separators}]+[#{separators}]{1,3}")
    text.scan(regexp).map(&:strip)
  end

  private

    def self.sentence_separators
      [
        '\.', '\?', '\!',
        '‽'
      ].join
    end
end