class Recursive_Linked_list

  attr_reader :node
  attr_accessor :head, :node_counter

  def initialize
    @head = Node.new(nil)
    @node_counter = 0
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
    else
      access_tail(current.ref)
    end
  end

  def pop(current = head)
    if current.ref == nil
    elsif current.ref.ref == nil
      current.ref = nil
    else
      pop(current.ref)
    end
  end

  def access_by_position(position, current = head)
    if @node_counter != position
      @node_counter += 1
      access_by_position(position, current.ref)
    else
      return current
    end
  end

  def count(num = 0 , current = head)
    if current.ref == nil
    elsif current.ref.ref == nil
      num +=1
    elsif current.ref.ref
      count(num + 2, current.ref.ref)
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
