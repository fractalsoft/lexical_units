require 'spec_helper'

describe LexicalUnits::String do
  class String
    include LexicalUnits::String
  end

  context "#words" do
    it "splits String into words" do
      array = %w(Lorem ipsum dolor sit amet)
      string = array.join(' ')

      string.words.should eq(array)
    end
  end

  context "#sentences" do
    it "splits String into sentences" do
      array = ["Lorem ipsum!", "Dolor sit?", "Amet."]
      string = array.join

      string.sentences.should eq(array)
    end
  end
end
