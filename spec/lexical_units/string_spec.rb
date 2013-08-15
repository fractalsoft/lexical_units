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

      string.words.should eq(array)
    end
  end

  context '#sentences' do
    it 'splits String into sentences' do
      array = ['Lorem ipsum!', 'Dolor sit?', 'Amet.']
      string = array.join

      string.sentences.should eq(array)
    end
  end

  context '#words_without_digits' do
    it 'splits String into words (no ditigs)' do
      array = %w(Lorem ipsum dolor sit amet)
      string = 'Lorem 1 ipsum 23 dolor 456 sit 7890 amet'

      string.words_without_digits.should eq(array)
    end
  end
end
