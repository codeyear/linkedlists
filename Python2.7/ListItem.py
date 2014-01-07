class ListItem:

	def __init__(self, value):
		self.value = value

	def getValue(self):
		return self.value

	def setValue(self, value):
		self.value = value

	def getNextItem(self):
		return self.nextItem

	def setNextItem(self, nextItem):
		self.nextItem = nextItem