require 'tsort'
require 'class_ancestry_sort/version'

module ClassAncestrySort

  def self.asc(classes)
    List.new(classes).tsort
  end

  def self.desc(*classes)
    asc(*classes).reverse
  end

  class List < Array

    include TSort

    private

    def tsort_each_node(&block)
      each(&block)
    end

    def tsort_each_child(node, &block)
      (node.ancestors & self).each(&block)
    end

  end

end
