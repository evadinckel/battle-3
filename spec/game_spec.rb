require './lib/game.rb'
require './app.rb'
require './lib/player.rb'

describe Game do
  describe '#attack' do
    it 'decrease $hp2 by 10' do
      expect { Game.new(Player.new('name1'), Player.new('name2')).attack }.to change { $hp2 }.by(-10)
    end
  end
  describe '#initialize' do
    it 'accepts 2 arguments' do
      expect { Game.new(Player.new('name3'), Player.new('name4')) }.to_not raise_error
    end

  end
end
