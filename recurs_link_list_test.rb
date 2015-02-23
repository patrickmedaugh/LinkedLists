require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'recursive_ll.rb'

class Linklisttest < Minitest::Test

  def test_it_exists
    assert Recursive_Linked_list
  end

  def test_a_node_class_exists
    assert Node
  end

  def test_it_has_a_head_with_default_value_nil
    link = Recursive_Linked_list.new()
    head = link.head
    assert_equal nil, head.ref
  end

  def test_head_can_take_a_node_object_as_a_ref_value
    link = Recursive_Linked_list.new
    node = Node.new("VALUE!!!")
    link.head.ref = node
    assert_equal node, link.head.ref
  end

  def test_append_can_take_a_node_object_as_a_parameter
    node = Node.new("VALUE!!!")
    link = Recursive_Linked_list.new()
    link.append(node)
    assert_equal node, link.head.ref
  end

  def test_append_can_add_multiple_nodes_to_list
    node1 = Node.new("NODE1!")
    node2 = Node.new("NODE2?")
    node3 = Node.new("NODE3!!!")
    link = Recursive_Linked_list.new()
    link.append(node1)
    link.append(node2)
    link.append(node3)
    assert_equal node2, node1.ref
  end

  def test_can_count_more_than_one_node
    node1 = Node.new("NODE1!")
    node2 = Node.new("NODE2?")
    node3 = Node.new("NODE3")
    link = Recursive_Linked_list.new
    link.append(node1)
    link.append(node2)
    link.append(node3)
    link.count
    assert_equal 3, link.count
  end

  def test_it_can_access_the_tail
    node1 = Node.new("NODE1!")
    node2 = Node.new("NODE2?")
    node3 = Node.new("NODE3")
    node4 = Node.new("NODE4")
    link = Recursive_Linked_list.new
    link.append(node1)
    link.append(node2)
    link.append(node3)
    link.append(node4)
    assert_equal node4, link.access_tail
  end

  def test_it_can_access_by_position
    node1 = Node.new("NODE1!")
    node2 = Node.new("NODE2?")
    node3 = Node.new("NODE3")
    node4 = Node.new("NODE4")
    node5 = Node.new("NODE5")
    link = Recursive_Linked_list.new
    link.append(node1)
    link.append(node2)
    link.append(node3)
    link.append(node4)
    link.append(node5)
    assert_equal node4, link.access_by_position(4)
  end

  def test_pop_can_delete_last_node
    node1 = Node.new("NODE1!")
    node2 = Node.new("NODE2?")
    node3 = Node.new("NODE3")
    link = Recursive_Linked_list.new
    link.append(node1)
    link.append(node2)
    link.append(node3)
    link.pop
    assert_equal node2, link.access_tail

  end

  def test_pop_can_return_deleted_node
  end

end
