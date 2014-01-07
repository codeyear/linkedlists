class LinkedList
	def initialize()
		@head
	end

	def getHead()
		return @head
	end

	def add(item)
		if !@head
			@head = item
			return
		end

		self.get(self.size).setNextNode(item)
	end

	def remove(index)
		if(index < self.size())
			get(index).setNextNode(get(index + 1))
		else
			get(index).setNextNode = nil
		end
	end

	def get(index)
		if(index < self.size())
			currentNode = @head
			if index > 0
				for i in 0..head # BUT WHY?
					currentNode = currentNode.getNextNode()
				end
			end
			return currentNode
		else
			raise ArgumentError, "Out of bounds"
		end
	end

	def set(index, value)
		if(index < self.size())
			currentNode = @head
			for i in 0..index
				currentNode = currentNode.getNextNode()
			end
			currentNode.setValue(value)
		else
			raise ArgumentError, "Out of bounds"
		end
	end

	##
	# TODO: Probibally need to replace this with a simple counter.
	# It sort of stinks to run through the entire list each time
	# we want to do pretty much anything.
	##
	def size()
		if !@head
			return 0
		else
			count = 1;
			currentNode = @head

			while currentNode.getNextNode() do
				currentNode = currentNode.getNextNode()
				count = count + 1
			end

			return count
		end
	end
end