require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'iterative_ll.rb'

class Linklisttest < Minitest::Test

  def test_it_exists
    assert Iterative_Linked_list
  end

  def test_a_node_class_exists
    assert Node
  end

  def test_it_has_a_head_with_default_value_nil
    link = Iterative_Linked_list.new()
    head = link.head
    assert_equal nil, head.ref
  end

  def test_head_can_take_a_node_object_as_a_ref_value
    link = Iterative_Linked_list.new
    node = Node.new("VALUE!!!")
    link.head.ref = node
    assert_equal node, link.head.ref
  end

  def test_append_can_take_a_node_object_as_a_parameter
    node = Node.new("VALUE!!!")
    link = Iterative_Linked_list.new()
    link.append(node)
    assert_equal node, link.node
  end

  def test_append_can_add_one_node_object_to_list
    node = Node.new("VALUE!!!")
    link = Iterative_Linked_list.new()
    link.append(node)
    assert_equal node, link.head.ref
  end

  def test_can_append_more_than_one_node_to_a_list
    node1 = Node.new("NODE1!!!")
    node2 = Node.new("NODE2!!!")
    link = Iterative_Linked_list.new()
    link.append(node1)
    link.append(node2)
    assert_equal node2, node1.ref
  end

  def test_can_count_one_node_in_list
    node = Node.new("NNOOOOOOOODE")
    link = Iterative_Linked_list.new
    link.append(node)
    link.count
    assert_equal 1, link.node_counter
  end

  def test_can_count_more_than_one_node
    node1 = Node.new("NODE1!")
    node2 = Node.new("NODE2?")
    link = Iterative_Linked_list.new
    link.append(node1)
    link.append(node2)
    link.count
    assert_equal 2, link.node_counter
  end

  def test_can_access_tail
    node1 = Node.new("NODE1!")
    node2 = Node.new("NODE2!")
    node3 = Node.new("Node3")
    link = Iterative_Linked_list.new
    link.append(node1)
    link.append(node2)
    link.append(node3)
    assert_equal node3, link.access_tail
  end

  def test_pop_can_return_last_node
    node1 = Node.new("NODE1")
    node2 = Node.new("NODE2")
    link = Iterative_Linked_list.new
    link.append(node1)
    link.append(node2)
    assert_equal node2, link.pop
  end

  def test_pop_can_delete_last_node_from_list
    node1 = Node.new("NODE1")
    node2 = Node.new("NODE2")
    link = Iterative_Linked_list.new
    link.append(node1)
    link.append(node2)
    link.pop
    assert_equal node1, link.access_tail
  end


end
