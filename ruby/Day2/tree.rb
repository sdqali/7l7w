class Tree
  attr_accessor :children, :node_name

  def initialize node_name, children=[]
    @children = children
    @node_name = node_name
  end

  def visit_all &block
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit &block
    block.call self
  end
end


tree = Tree.new "Ruby", [Tree.new("Reia"), Tree.new("MacRuby")]

puts "Visiting parent node"
tree.visit {|node| puts node.node_name}

puts "Visiting all nodes"
tree.visit_all {|node| puts node.node_name}
