class Recursive_Linked_list

  attr_reader :node
  attr_accessor :head, :node_counter

  def initialize
    @head = Node.new(nil)
  end

  def append(node, current = head)
    if current.ref == nil
      current.ref = node
    elsif current.ref.ref
      append(node, current.ref.ref)
    else
      current.ref.ref = node
    end
  end

  def access_tail(current = head)
    if current.ref == nil
      return current
    elsif current.ref
      access_tail(current.ref)
    end
  end

  def pop(current = head)
    if current.ref == nil
    elsif current.ref.ref == nil
      pop_node = current.ref
      current.ref = nil
      return pop_node
    else
      pop(current.ref)
    end
  end

  def access_by_position(position, current = head, node_counter = 0)
    if node_counter != position
      node_counter += 1
      access_by_position(position, current.ref, node_counter)
    else
      current
    end
  end

  def count(current = head)
    if current.ref == nil
      0
    else
      1 + count(current.ref)
    end
  end

end

class Node
  attr_accessor :ref, :data  # => nil

  def initialize(data, ref=nil)
    @data = data
    @ref = ref
  end

end
