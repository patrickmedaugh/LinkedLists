class Iterative_Linked_list

  attr_reader :node
  attr_accessor :head, :node_counter

  def initialize
    @head = Node.new(nil)
  end

  def append(node)
    @node = node
    current_node = head
    while current_node.ref != nil
      current_node = current_node.ref
    end
      current_node.ref = node
  end

  def access_tail
    current_node = head
    while current_node.ref != nil
      current_node = current_node.ref
    end
    return current_node
  end

  def pop
    current_node = head
    next_node = current_node.ref
    while next_node.ref != nil
      current_node = current_node.ref
      next_node = next_node.ref
    end
    current_node.ref = nil
    return next_node
  end

  def access_by_position(position)
    current_node = head
    @node_counter = 0
    while node_counter != position
      current_node = current_node.ref
      @node_counter += 1
    end
    return current_node
  end

  def count
    current_node = head
    @node_counter = 0
    while current_node.ref != nil
      current_node = current_node.ref
      @node_counter += 1
    end
    return @node_counter
  end

end

class Node
  attr_accessor :ref, :data

  def initialize(data, ref=nil)
    @data = data
    @ref = ref
  end

end
