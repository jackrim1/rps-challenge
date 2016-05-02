require_relative 'player'

class Game

	attr_reader :player_1, :player_2

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
	end

	WINNING_COMBOS = [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]

	def array
		[player_1.state, player_2.state]
	end


	def result
		if player_1.state == player_2.state
			return "Draw!"
		elsif WINNING_COMBOS.include? array
			return player_1
		else
			player_2
		end
	end

end

