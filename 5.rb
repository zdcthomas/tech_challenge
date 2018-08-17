given =* 1..9


def find_combos(list, total)

end

def biggest_fusion(list)
  
end

class OpNode
  def initialize(operator, height = 1, parent = nil)
    @operator = operator
    @height = height
    @parent = parent
  end

  def find_total
    if @parent
      @operator.do(@height, @parent.find_total)
    else
      @height
    end
  end
end



class Operator
  def initialize(type)
    @type = type
  end

  def fuse(num1, num2)
    (num1.to_s << num2.to_s).to_i
  end

  def do(num1, num2)
    if type == 'plus'
      num1 + num2
    elsif type == 'minus'
      num1 - num2
    elsif type == 'none'
      fuse(num1, num2)
    end
  end
end

def build_tree(list)
  list.each do 
end

top = OpNode.new('none')

require'pry';binding.pry

# This was meant to create a tree with nodes containing the element and the operator used to combine it with it's parent
# the last steps would be to create the tree and then complete a tree traversal to find the max total