require "computer"

describe Computer do
	subject(:computer) { double :computer, state: "rock" }

	describe '#state' do
		it 'returns the state of the commputer' do
			expect(computer.state).to eq "rock"
		end
	end

end
