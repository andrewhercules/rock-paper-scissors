class Player

	attr_accessor :name, :selection

	def initialize(name = nil)
		@name = name
		@selection = nil
	end

	def make_selection(selection = ["rock", "paper", "scissors"].sample)
		@selection = selection.to_s.downcase
	end
end