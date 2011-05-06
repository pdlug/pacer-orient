class Rspec::GraphRunner
  module Orient
    def all(usage_style = :read_write, indices = true, &block)
      super
      orient(usage_style, indices, &block)
    end

    def orient(usage_style = :read_write, indices = true, &block)
      for_graph('orient', usage_style, indices, true, orient_graph, orient_graph2, orient_graph_no_indices, block)
    end

    protected

    def orient_graph
      return @orient_graph if @orient_graph
      path1 = File.expand_path('tmp/spec.orient')
      dir = Pathname.new(path1)
      dir.rmtree if dir.exist?
      @orient_graph = Pacer.orient("local:#{path1}")
    end

    def orient_graph2
      return @orient_graph2 if @orient_graph2
      path2 = File.expand_path('tmp/spec.orient.2')
      dir = Pathname.new(path2)
      dir.rmtree if dir.exist?
      @orient_graph2 = Pacer.orient("local:#{path2}")
    end

    def orient_graph_no_indices
      return @orient_graph_no_indices if @orient_graph_no_indices
      path3 = File.expand_path('tmp/spec_no_indices.orient')
      dir = Pathname.new(path3)
      dir.rmtree if dir.exist?
      @orient_graph_no_indices = Pacer.orient("local:#{path3}")
      @orient_graph_no_indices.drop_index :vertices
      @orient_graph_no_indices.drop_index :edges
      @orient_graph_no_indices
    end
  end

  include Orient
end
