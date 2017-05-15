require './lib/node'

class LinkedList

  attr_reader :head,
              :current_node

  def initialize
    @head = nil
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
    else
      current = @head
        until current.next_node.nil?
          current = current.next_node
        end
          current.next_node = Node.new(data)
    end
  end

  def count
    counter = 0
    current = head
    if current.nil?
      return counter
    end
    counter = 1
    until current.next_node == nil
      counter += 1
      current = current.next_node
    end
    counter
  end

  def to_string
    current = @head
    output = []
    output << @head.data
      until current.next_node.nil?
        current = current.next_node
        output << current.data
      end
    output.join(" ")
  end

  def prepend(data)
    current = Node.new(data)
    current.next_node = @head
    @head = current
    data
  end

  def insert(position, data)
    current_node = @head
    counter = 1
    while counter != position
      current_node = current_node.next_node
      counter += 1
    end
    new_node = Node.new(data)
    remaining_nodes = current_node.next_node
    current_node.next_node = new_node
    new_node.next_node = remaining_nodes
  end
end
