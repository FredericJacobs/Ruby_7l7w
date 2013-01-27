#!/usr/bin/env ruby

class Tree
  attr_accessor :name, :children
  def initialize(treedef)
    if treedef.is_a?(Hash)
      raise "Hash should only contain one hierarchy" if treedef.size > 1
      @name, cdefs = treedef.to_a[0]
      @children = []
      cdefs.each{|k,v|
        @children << Tree.new(k => v)
      }
    end
  end
  
  def visit_all(level=0, &blk)
    yield(level, name)
    @children.each{|c|
      c.visit_all(level+1, &blk)
    }
  end
  
  def visit
    yield(name)
  end
end


t = Tree.new({'Grand Daddy' => {'Dad' => {'Child 1' => {}, 'Child 2' => {}},
                            'Uncle' => {'Child 3' => {}, 'Child 4' => {}}}})

t.visit_all{|lvl, name|
  puts("  "*(lvl) + name)
}
