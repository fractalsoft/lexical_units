# coding: utf-8
require 'spec_helper'

describe LexicalUnits do
  context ".words" do
    let(:klass) { LexicalUnits }

    it "splits text with whitespaces into words" do
      text = "Lorem ipsum dolor sit amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits text with comma, colon and semicolon into words" do
      text = "Lorem ipsum,dolor:sit;amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits text with dot, question mark and exclamation mark into words" do
      text = "Lorem ipsum.dolor?sit!amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits other text with whitespaces, comma and dot into words" do
      text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
      array = %w(Lorem ipsum dolor sit amet consectetur adipiscing elit)

      klass::words(text).should eq(array)
    end

    it "splits text with hyphen into words" do
      text = "Lorem ipsum dolor-sit amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits text with slash into words" do
      text = "Lorem ipsum dolor sit/amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits text with round brackets into words" do
      text = "Lorem ipsum(dolor sit)amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits text with square brackets into words" do
      text = "Lorem ipsum dolor[sit]amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits text with pointy brackets into words" do
      text = "Lorem<ipsum dolor sit>amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end

    it "splits text with braces into words" do
      text = "Lorem ipsum{dolor}sit amet"
      array = %w(Lorem ipsum dolor sit amet)

      klass::words(text).should eq(array)
    end
  end
end