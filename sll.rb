require_relative "node"
class SinglyLinkedList
	attr_accessor :head
	
	def initialize
		@head = Node.new "head"
		@all_nodes = []
	end

	def insert(new_element, element)
		if find(element)
			current = find(element)
		else
			current = @head
		end
		new_node = Node.new(new_element)
		new_node.next = current.next
		current.next = new_node
	end

	def find(element)
		# current = @head
		# if @head.element == element
		# 	current = @head
		# end
		# unless current.next == nil
		# 	if current.element == element
		# 		return current
		# 	else
		# 		current = current.next
		# 	end
		# end			
		# return current
		current = @head
		while current !=nil && current.element != element
			current = current.next
		end
		current
	end

	def display_nodes
		result = []
		current = @head
		while current.next != nil
			result << current.next
			current = current.next
		end
		result
	end

	def display_elements
		result = []
		current = @head
		while current.next != nil
			result << current.next.element
			current = current.next
		end
		result
	end

	def remove(item)
		current = @head
		while current && current.next
			if current.next.element == item
				result = current.next
				current.next = current.next.next
				return result
			else
				current = current.next
			end
		end
	end

	def find_previous(item)
		current = @head
		while current && current.next
			if current.next.element == item
				return current
			else
				current = current.next
			end
		end
	end

end











































