require './lib/player.rb'


describe Player do
  describe "#name" do
    it 'checks if the name method returns name' do
      expect(Player.new('eva').return_name).to eq('eva')
    end
  end
end
