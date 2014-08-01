# coding: utf-8
require 'spec_helper'

describe LexicalUnits do
  context '.words' do
    before do
      @array = %w(Lorem ipsum dolor sit amet)
    end

    it 'splits text with whitespaces into words' do
      text = 'Lorem ipsum dolor sit amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with comma, colon and semicolon into words' do
      text = 'Lorem ipsum,dolor:sit;amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with dot, question mark and exclamation mark into words' do
      text = 'Lorem ipsum.dolor?sit!amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits other text with whitespaces, comma and dot into words' do
      text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
      array = %w(Lorem ipsum dolor sit amet consectetur adipiscing elit)

      expect(subject.words(text)).to eq(array)
    end

    it 'no splits text with hyphen into words' do
      text = 'Lorem ipsum dolor-sit amet'
      array = %w(Lorem ipsum dolor-sit amet)

      expect(subject.words(text)).to eq(array)
    end

    it 'splits text with slash into words' do
      text = 'Lorem ipsum dolor sit/amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with round brackets into words' do
      text = 'Lorem ipsum(dolor sit)amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with square brackets into words' do
      text = 'Lorem ipsum dolor[sit]amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with pointy brackets into words' do
      text = 'Lorem<ipsum dolor sit>amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with braces into words' do
      text = 'Lorem ipsum{dolor}sit amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with vertical bar into words' do
      text = 'Lorem ipsum|dolor sit amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with tilde into words' do
      text = 'Lorem ipsum dolor~sit amet'

      expect(subject.words(text)).to eq(@array)
    end

    # Spanish
    it 'splits text with inverted question and exclamation marks into words' do
      text = 'Lorem¿ipsum?dolor¡sit!amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with equals sign into words' do
      text = 'Lorem ipsum=dolor sit amet'

      expect(subject.words(text)).to eq(@array)
    end

    it 'splits text with typewriter double quotes into words' do
      text = %Q(Lorem"ipsum dolor"sit amet)

      expect(subject.words(text)).to eq(@array)
    end

    it 'split text with non-English quotation marks into words' do
      text = %Q(Lorem»ipsum dolor«sit amet)

      expect(subject.words(text)).to eq(@array)
    end

    it "split text with 'at sign' (@) into words" do
      text = %Q(Lorem@ipsum dolor sit amet)

      expect(subject.words(text)).to eq(@array)
    end

    it "split text with 'number sign (#) into words" do
      text = %Q(Lorem ipsum#dolor sit amet)

      expect(subject.words(text)).to eq(@array)
    end

    it 'split text with plus (+) into words' do
      text = %Q(Lorem+ipsum dolor+sit amet)

      expect(subject.words(text)).to eq(@array)
    end

    it 'splite text with minus (–) into words' do
      text = %Q(Lorem ipsum–dolor sit amet)

      expect(subject.words(text)).to eq(@array)
    end
  end
end
