require './ListItem'
require './LinkedList'

list = LinkedList.new

list.add(ListItem.new(1))
list.add(ListItem.new(2))

puts list.getHead.getValue

#puts list.size

puts list.get(0).getValue()