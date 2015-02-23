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

  def access_tail
  end

  def pop
  end

  def access_by_position(position)
  end

  def count(num = 0 , current = head)
    if current.ref == nil
    elsif current.ref.ref
      count(num + 2, current.ref.ref)
    else
      num +=1
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
