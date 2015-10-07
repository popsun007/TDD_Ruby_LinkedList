class Node
	attr_accessor :element, :next

	def initialize(item)
		@element = item
		@next = nil
	end
end