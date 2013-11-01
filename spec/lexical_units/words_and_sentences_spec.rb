# coding: utf-8
require 'spec_helper'

describe LexicalUnits do
  context '.words_and_sentences' do
    it 'splits text into sentences and each into words' do
      text = 'Lorem ipsum dolor! Sit amet? Consectetur adipiscing elit.'
      array = [
        %w(Lorem ipsum dolor),
        %w(Sit amet),
        %w(Consectetur adipiscing elit)
      ]

      subject.words_and_sentences(text).should eq(array)
    end
  end
end