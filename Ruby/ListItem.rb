class ListItem
	def initalize(value, nextNode)
		@value = value
		@nextNode = nextNode
	end

	def getValue
		return @value
	end

	def getNextNode
		return @nextNode
	end
end