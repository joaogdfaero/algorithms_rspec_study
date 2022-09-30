require 'spec_helper'
require 'hero'
require 'binary_search'

describe Hero do
    it 'has sword' do
        hero = Hero.new
        expect(hero.weapon).to eq('sword')
    end
end

