# encoding: utf-8
require 'spec_helper'

describe LexicalUnits::String do
  # Testing class
  class String
    include LexicalUnits::String
  end

  context '#words' do
    it 'splits String into words' do
      array = %w(Lorem ipsum dolor sit amet)
      string = array.join(' ')

      expect(string.words).to eq(array)
    end
  end

  context '#sentences' do
    it 'splits String into sentences' do
      array = ['Lorem ipsum!', 'Dolor sit?', 'Amet.']
      string = array.join

      expect(string.sentences).to eq(array)
    end
  end

  context '#words_and_sentences' do
    it 'splits String into words and sentences' do
      array = [%w(Lorem ipsum), %w(Dolor sit), %w(Amet)]
      string = array.map do |sentence|
        sentence.join(' ')
      end.join('. ') + '.'

      expect(string.words_and_sentences).to eq(array)
    end
  end

  context '#words_without_digits' do
    it 'splits String into words (no ditigs)' do
      array = %w(Lorem ipsum dolor sit amet)
      string = 'Lorem 1 ipsum 23 dolor 456 sit 7890 amet'

      expect(string.words_without_digits).to eq(array)
    end
  end
end
