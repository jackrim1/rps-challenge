require 'game'
require 'player'

describe Game do
	let(:player_1) { double :player }
	let(:player_2) { double :player }
	subject(:game) { described_class.new(player_1, player_2) }
	
	it 'initializes with player 1' do
		expect(game.player_1).to eq player_1
	end

	it 'initializes with player 2' do
		expect(game.player_2).to eq player_2
	end

	describe 'checking the players states' do
		let(:player_1) { double Player.new("bob"), state: "rock"}
		let(:player_2) { double Player.new("ned"), state: "paper"}

		it 'confirms the array includes the players states' do
			expect(game.array).to eq [player_1.state, player_2.state]
		end

		it 'confirms the correct winner' do
			expect(game.result).to eq player_2
		end
	end


end