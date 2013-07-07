module LexicalUnits
  module String
    def words
      LexicalUnits::words(self)
    end

    def sentences
      LexicalUnits::sentences(self)
    end
  end
end
