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
    end
  end

  def reverse_list(previous=nil)
    current_node = self
    while current_node
      previous = LinkedListNode.new(current_node.value, previous)
      current_node = current_node.next_node
    end
    return previous.value
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

puts "Print sample linked list:"
node3.print_values
puts ""

puts "Reverse list:"
rev_list = node3.reverse_list
puts rev_list
# can't call .print_values on rev_list unless return previous (not previous.value)

