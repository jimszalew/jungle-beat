class Node

  attr_accessor :next_node,
                :data

  def initialize(data, next_node = nil)
    @data = data
  end

end
