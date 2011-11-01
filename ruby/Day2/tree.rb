class Tree
  attr_accessor :children, :node_name

  def initialize hash
    @children = []
    @node_name = hash.keys.first
    if @node_name
      @children = hash[@node_name].map do |h|
        Tree.new(Hash[[h]])
      end
    end
  end

  def visit_all &block
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit &block
    block.call self
  end
end

hash = {
  "grandpa"=> {
    "dad"=>{
      "child 1"=>{},
      "child 2"=>{}
    },
    "uncle"=>{
      "child 3"=>{},
      "child 4"=>{}
    }
  }
}

tree = Tree.new hash

puts "Visiting parent node"
tree.visit {|node| puts node.node_name}
puts
puts "Visiting all nodes"
tree.visit_all {|node| puts node.node_name}
