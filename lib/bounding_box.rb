class BoundingBox
  attr_accessor :x, :y, :width, :height, :left, :right, :bottom, :top

  def initialize (x, y, width, height)
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
    @width = width
    @height = height
  end

  def contains_point?(x,y)
    if x >= left && x <= right && y >= bottom && y <= top
      true
    else
      false
    end
  end
end
