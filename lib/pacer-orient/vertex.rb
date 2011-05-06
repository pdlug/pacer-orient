require 'yaml'

module Pacer
  OrientVertex = com.tinkerpop.blueprints.pgm.impls.orientdb.OrientVertex
  # Extend the java class imported from blueprints.
  class OrientVertex
    include Pacer::Core::Graph::VerticesRoute
    include ElementMixin
    include VertexMixin
  end
end
