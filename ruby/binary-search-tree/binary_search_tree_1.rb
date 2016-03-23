class Bst
  def initialize(data)
    @tree = {}
    @tree['data'] = data
    @tree['left'] = nil
    @tree['right'] = nil 
  end

   def data
    @tree
   end

   def insert_node(node,data)
    if node == nil
      node = {'data' => data,
        'left' => nil,
        'right' => nil
      }
      return node
    end
    if data < node['data']
        node['left']  = insert_node(node['left'], data)
    else
        node['right'] = insert_node(node['right'], data)
    end
    node
  end

  def insert(data)
    insert_node(@tree,data)
  end

  

end