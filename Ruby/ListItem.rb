class ListItem
	def initalize(value, nextNode)
		@value = value
		@nextNode = nextNode
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