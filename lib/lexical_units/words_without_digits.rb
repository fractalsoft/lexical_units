# encoding: utf-8

# Part of split into words, but excluding digits
module LexicalUnits
  # Split text into words without digits
  #
  #   self.words('Lorem 0 ipsum') #=> ['Lorem', 'ipsum']
  #   self.words('Lorem ipsum 100') #=> ['Lorem', 'ipsum']
  def self.words_without_digits(text)
    LexicalUnits.words(text).delete_if { |word| numeric?(word) }
  end

  private

  def self.numeric?(value)
    return true if value =~ /^\d+$/
    true if Float(value)
  rescue
    false
  end
end