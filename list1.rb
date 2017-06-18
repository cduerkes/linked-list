class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

# copied from lesson, returns NoMethodError
#  def print_values(list_node)
#    if list_node
#      print "#{list_node.value} --> "
#      print_values(list_node.next_node)
#    else
#      print "nil\n"
#      return
#    end
#  end

  def print_values
    print "#{self.value} --> "
    if self.next_node
      self.next_node.print_values
    else
      print "nil\n"
      return
    end
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# print_values(node3)
# list1.rb:23:in `<class:LinkedListNode>': undefined method `print_values' 
# for LinkedListNode:Class (NoMethodError)

node3.print_values

# First implement a Stack using only the data type of a LinkedList. Do not use an Array. 
# Fill in the blanks with the following code:

class Stack
  attr_accessor :data

  def initialize
    @data = nil
  end

  # Push a value onto the stack
  def push(value)
    self.data = LinkedListNode.new(value, self.data)

    self.data.print_values
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    popped = self.data.value
    self.data = self.data.next_node
    return popped
  end
end

stack1 = Stack.new
stack1.push(10)
stack1.push(20)
stack1.push(30)
stack1.pop