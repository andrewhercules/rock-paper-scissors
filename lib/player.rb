class Player

	attr_reader :name, :win_count, :selection

	def initialize(name)
		@name = name
		@win_count = nil
		@selection = nil
	end

	def make_selection(selection = ["rock", "paper", "scissors"].sample)
		@selection = selection.to_s.downcase
	end
end