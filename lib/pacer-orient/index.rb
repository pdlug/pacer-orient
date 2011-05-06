require 'yaml'

module Pacer
  OrientIndex = com.tinkerpop.blueprints.pgm.impls.orientdb.OrientIndex

  class OrientIndex
    include IndexMixin
  end
end
