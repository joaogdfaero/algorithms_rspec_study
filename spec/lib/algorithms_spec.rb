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

    it 'bubble sorts sorts correctly' do
        resultado = Algorithms.new
        expect(resultado.bubble_sort([10, 4, 3, 50, 23, 90])).to eq([3, 4, 10, 23, 50, 90])  
    end

    it 'bubble sort doesnt work' do
        resultado = Algorithms.new
        expect(resultado.bubble_sort([10, 4, 3, 50, 23, 90])).not_to eq([10, 4, 3, 50, 23, 90])
    end

    it 'returns the right answer using minimum sum' do
        resultado = Algorithms.new
        expect(resultado.minimum_sum([2,4,1,3])).to eq(3)
    end

    it 'returns the right amount of ocurrences' do 
        resultado = Algorithms.new
        expect(resultado.conta_ocorrencias([3,3,1],3)).to eq(2)
    end

    it 'returns the right position using linear search' do
        resultado = Algorithms.new
        expect(resultado.linear_search([10, 20, 80, 30, 60, 50,110, 100, 130, 170],80)).to eq(3)
    end
end

