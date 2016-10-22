require 'bounding_box'

class BoundingArea
  attr_accessor :boxes

  def initialize(boxes)
    @boxes = boxes

  end

  def boxes_contain_point?(x,y)
    contains_point = false
    boxes.each do |box|
      if box.contains_point?(x,y)
        contains_point = true
      end
    end
    contains_point
  end

end
