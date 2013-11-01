# LexicalUnits [![Gem Version](https://badge.fury.io/rb/lexical_units.png)](http://badge.fury.io/rb/lexical_units) [![Build Status](https://travis-ci.org/fractalsoft/lexical_units.png)](https://travis-ci.org/fractalsoft/lexical_units) [![Dependency Status](https://gemnasium.com/fractalsoft/lexical_units.png)](https://gemnasium.com/fractalsoft/lexical_units) [![Coverage Status](https://coveralls.io/repos/fractalsoft/lexical_units/badge.png)](https://coveralls.io/r/fractalsoft/lexical_units) [![Stories in Ready](https://badge.waffle.io/fractalsoft/lexical_units.png)](http://waffle.io/fractalsoft/lexical_units)

[![endorse](https://api.coderwall.com/torrocus/endorsecount.png)](https://coderwall.com/torrocus)

Lexical unit is a single word, a part of a word, or a chain of words that forms the basic elements of a language's lexicon.

## Installation

Add this line to your application's Gemfile:

    gem 'lexical_units'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lexical_units

## Usage

```ruby
LexicalUnits::words(text)
LexicalUnits::sentences(text)
LexicalUnits::words_and_sentences(text)
LexicalUnits::words_without_digits(text)
```

You can include methods into String class:

```ruby
class String
  include LexicalUnits::String
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
