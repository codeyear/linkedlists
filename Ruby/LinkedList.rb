class LinkedList
	def initalize()
		@head = null
	end

	def add(item)
		if(@head = null)
			@head = item
			return
		end

		self.get(self.size).setNextNode(item)
	end

	def remove(index)
		if(index < self.size())
			get(index).setNextNode(get(index + 1))
		else
			get(index).setNextNode = null
		end
	end

	def get(index)
		if(index < self.size())
			currentNode = @head
			for i in 0..index
				currentNode = currentNode.getNextNode()
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
		if(@head == null)
			return 0
		else
			count = 0;
			currentNode = @head

			while currentNode.getNextNode() == null
				currentNode = currentNode.getNextNode()
				count++
			end

			return count
		end
	end
end