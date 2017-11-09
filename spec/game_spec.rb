require './lib/game.rb'
require './app.rb'

describe Game do
  describe '#attack' do
    it 'decrease $hp2 by 10' do
      expect { subject.attack }.to change { $hp2 }.by(-10)
    end
  end
end
