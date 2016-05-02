class Player

	attr_reader :name
	attr_accessor :state

	def initialize(name)
		@name = name
	end

	def choice
		@state
	end

end
