# coding: utf-8
require 'spec_helper'

describe LexicalUnits do
  context '.words_without_digits' do
    [
      { text: 'Lorem ipsum 12345', array: %w(Lorem ipsum) },
      { text: 'dolor 98765 sit amet.', array: %w(dolor sit amet) }
    ].each do |hash|
      text, array = hash.values
      it 'splits text into words without digits' do
        expect(subject.words_without_digits(text)).to eq(array)
      end
    end
  end
end
