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

puts "Print sample linked list:"
puts "#{node3.print_values}"

class Stack
  attr_accessor :top_node

  def initialize
    @top_node = nil
  end

  # Push a value onto the stack
  def push(value)
    self.top_node = LinkedListNode.new(value, self.top_node)

    self.top_node.print_values
  end

  # Pop an item off the stack and return the value to the user
  def pop
    if self.top_node
      popped = self.top_node.value
      self.top_node = self.top_node.next_node
      return popped
    else 
      return "nil\n"
    end
  end

  def reverse_list
    rev_stack = Stack.new

    while self.top_node
      rev_stack.push(self.pop)
    end
    return rev_stack
  end
end

stack1 = Stack.new
puts "Push items onto the inital stack:"
stack1.push(10)
stack1.push(20)
stack1.push(30)

puts ""
puts "Pop all items:"
puts stack1.pop
puts stack1.pop
puts stack1.pop
puts stack1.pop

puts ""
puts "Push items back onto stack:"
stack1.push(10)
stack1.push(20)
stack1.push(30)

puts ""
puts "Push items in reverse order onto a new stack (rev_stack):"
puts stack1.reverse_list

# print_values method only works in push method apparently because 
# that is where LinkedListNode object is instantiated in Stack class