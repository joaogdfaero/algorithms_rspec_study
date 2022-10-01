require 'spec_helper'
require 'hero'
require 'algorithms'

describe Hero do
    it 'has sword' do
        hero = Hero.new
        expect(hero.weapon).to eq('sword')
    end
end

describe Algorithms do
    it 'binary search works' do
        resultado = Algorithms.new
        expect(resultado.binary_search(110)).to eq(7)
    end
end

describe Algorithms do
    it 'bubble sorts sorts correctly' do
        resultado = Algorithms.new
        expect(resultado.bubble_sort([10, 4, 3, 50, 23, 90])).to eq([3, 4, 10, 23, 50, 90])  
    end

    it 'bubble sort doesnt work' do
        resultado = Algorithms.new
        expect(resultado.bubble_sort([10, 4, 3, 50, 23, 90])).not_to eq([10, 4, 3, 50, 23, 90])
    end
end

