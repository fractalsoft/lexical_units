# encoding: utf-8

# Part of split into words
module LexicalUnits
  # Split text into words
  #
  #   self.words('Lorem ipsum dolor sit') #=> ['Lorem','ipsum', 'dolor', 'sit']
  #   self.words('Lorem, ipsum. Dolor?') #=> ['Lorem', 'ipsum', 'Dolor']
  def self.words(text)
    regexp = Regexp.new("[#{LexicalUnits.separators}]")
    text.gsub(regexp, ' ').split(' ')
  end

  private

  def self.separators
    [
      '\,', '\:', '\;', '\.', '\?', '\!', '\/', '\|', '\~',
      '\(', '\)', '\[', '\]', '\>', '\<', '\{', '\}',
      "\¿", "\¡", '\=', '\"', "\»", "\«", '\@', '\#', '\+', '–', '—', '„', '”'
    ].join
  end
end
