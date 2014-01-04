class ListItem
	def initialize(value)
		@value = value
		@nextNode
	end

	def getValue()
		return @value
	end

	def setValue(value)
		@value = value
	end

	def getNextNode()
		return @nextNode
	end

	def setNextNode(node)
		@nextNode = node
	end
end