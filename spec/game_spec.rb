require './lib/game.rb'
require './app.rb'
require './lib/player.rb'

describe Game do
  let(:game) { Game.new(Player.new('name1'), Player.new('name2')) }

  describe '#attack_1' do
    it 'decrease $hp2 by 10' do
      expect { game.attack_2 }.to change { $hp2 }.by(-10)
    end
  end

  describe '#attack_2' do
    it 'decrease $hp2 by 10' do
      expect { game.attack_1 }.to change { $hp1 }.by(-10)
    end
  end

  describe '#swtich_turn' do
    it 'increase $count bye 1' do
      expect { game.switch_turn }.to change { $count }.by(+1)
    end
  end

  describe '#initialize' do
    it 'accepts 2 arguments' do
      expect { game }.to_not raise_error
    end
  end

  describe '#return_name_1' do
    it "returns name of player 1" do
     expect(game.return_name_1).to eq('name1')
    end
  end

  describe '#return_name_2' do
    it "returns name of player 2" do
     expect(game.return_name_2).to eq('name2')
    end
  end
end
