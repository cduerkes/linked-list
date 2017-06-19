class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

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

node3.print_values

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

  # Pop an item off the stack and return the value to the user
  def pop
    if self.data
      popped = self.data.value
      self.data = self.data.next_node
      return popped
    else 
      return "nil\n"
    end
  end

  def reverse_list
    rev_stack = Stack.new

    while self.data
      rev_stack.push(self.pop)
    end
    return rev_stack
  end
end

stack1 = Stack.new
stack1.push(10)
stack1.push(20)
stack1.push(30)
puts stack1.reverse_list