# encoding: utf-8
require 'spec_helper'

describe LexicalUnits do
  context '.sentences' do
    it 'splits text into sentences' do
      text = %q{Lorem ipsum dolor sit amet. Consectetur adipiscing elit.
        Fusce ut lacinia lorem. Nullam a sem quam. Duis faucibus tortor in.}
      array = [
        'Lorem ipsum dolor sit amet.',
        'Consectetur adipiscing elit.',
        'Fusce ut lacinia lorem.',
        'Nullam a sem quam.',
        'Duis faucibus tortor in.'
      ]

      expect(subject.sentences(text)).to eq(array)
    end

    it 'splits text with question mark and exclamation mark into sentences' do
      text = 'Lorem ipsum dolor! Sit amet? Consectetur adipiscing elit.'
      array = [
        'Lorem ipsum dolor!',
        'Sit amet?',
        'Consectetur adipiscing elit.'
      ]

      expect(subject.sentences(text)).to eq(array)
    end

    it 'splits text with ellipsis into sentences' do
      text = 'Lorem ipsum dolor, sit amet... Consectetur adipiscing elit.'
      array = [
        'Lorem ipsum dolor, sit amet...',
        'Consectetur adipiscing elit.'
      ]

      expect(subject.sentences(text)).to eq(array)
    end

    it 'splits text with interrobangs into sentences' do
      text = "Say what‽ She's pregnant‽ Who is the father‽‽‽ Really?"
      array = [
        'Say what‽',
        "She's pregnant‽",
        'Who is the father‽‽‽',
        'Really?'
      ]

      expect(subject.sentences(text)).to eq(array)
    end

  end
end
