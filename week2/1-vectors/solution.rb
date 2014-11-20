class Vector2D
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def length
    length = Math.sqrt(self.x ** 2 + self.y ** 2)
  end

  def normalize
    normalized_vector = Vector2D.new(self.x / length, self.y / length)
  end

  def +(additive)
    new_vector = Vector2D.new(0,0)

    if additive.is_a? Numeric
      new_vector.x = self.x + additive
      new_vector.y = self.y + additive
    elsif additive.is_a? Vector2D
      new_vector.x = self.x + additive.x
      new_vector.y = self.y + additive.y
    end

    new_vector
  end

  def -(subtractive)
    new_vector = Vector2D.new(0, 0)

    if subtractive.is_a? Numeric
      new_vector.x = self.x - subtractive
      new_vector.y = self.y - subtractive
    elsif subtractive.is_a? Vector2D
      new_vector.x = self.x - subtractive.x
      new_vector.y = self.y - subtractive.y
    end

    new_vector
  end

  def *(multiplicative)
    new_vector = Vector2D.new(1, 1)

    if multiplicative.is_a? Numeric
      new_vector.x = self.x * multiplicative
      new_vector.y = self.y * multiplicative
    elsif multiplicative.is_a? Vector2D
      new_vector.x = self.x * multiplicative.x
      new_vector.y = self.y * multiplicative.y
    end

    new_vector
  end

  def /(divisible)
    new_vector = Vector2D.new(1, 1)

    if (divisible.is_a? Numeric) && (divisible != 0)
      new_vector.x = self.x.to_f / divisible.to_f
      new_vector.y = self.y.to_f / divisible.to_f
    elsif divisible.is_a? Vector2D
      new_vector.x = self.x.to_f / divisible.x.to_f
      new_vector.y = self.y.to_f / divisible.y.to_f
    end

    new_vector
  end

  def ==(comparative)
    return false if self.x != comparative.x
    return false if self.y != comparative.y
    return true
  end

  def to_s
    return "The X coordinate for the vector is #{x}" +
      " and the Y coordinate is #{y}"
  end

  def e
    return Vector2D.new(1, 0)
  end

  def j
    return Vector2D.new(0, 1)
  end

  def inspect
    "#{self.object_id}"
  end

  alias magnitude length
end

class Vector
  attr_accessor :components

  def initialize(*components)
    @components = components.flatten
  end

  def dimension
    return @components.size
  end

  def length
    result = 0
    @components.map do |x|
      result += x*x
    end
    Math.sqrt(result)
  end

  def normalize
    normalized_components = @components.map do |x|
      x / length
    end
    normalized_vector = Vector.new(normalized_components)
  end

  def [](index)
    return "No such argument" if index > @components.size - 1
    @components[index]
  end

  def []=(index, value)
    @components[index] = value
  end

  def ==(other)
    return "Vectors have different dimensions" if self.dimension != other.dimension
    @components.each_index do |x|
      return false if @components[x]!= other[x]
    end
    true
  end

  def +(vector_of_same_dimension_or_scalar)
    elements = []
    components.each_index do |x|
      if vector_of_same_dimension_or_scalar.is_a? Numeric
        elements[x] = self.components[x] + vector_of_same_dimension_or_scalar
      else
        elements[x] = self.components[x] + vector_of_same_dimension_or_scalar.components[x]
      end
    end
    new_vector = Vector.new(elements)
  end

  def -(vector_of_same_dimension_or_scalar)
    elements = []
    components.each_index do |x|
      if vector_of_same_dimension_or_scalar.is_a? Numeric
        elements[x] = self.components[x] - vector_of_same_dimension_or_scalar
      else
        elements[x] = self.components[x] - vector_of_same_dimension_or_scalar.components[x]
      end
    end
    new_vector = Vector.new(elements)
  end

  def *(scalar)
    elements = []
    components.each_index do |x|
      if vector_of_same_dimension_or_scalar.is_a? Numeric
        elements[x] = self.components[x] * vector_of_same_dimension_or_scalar
      else
        return "Scalar multiplication only"
      end
    end
    new_vector = Vector.new(elements)
  end

  def /(scalar)
    elements = []
    components.each_index do |x|
      if vector_of_same_dimension_or_scalar.is_a? Numeric
        elements[x] = self.components[x] / vector_of_same_dimension_or_scalar
      else
        return "Scalar divison only"
      end
    end
    new_vector = Vector.new(elements)
  end

  def to_s
    dim = 1
    @components.each do |x|
      puts "Dimension #{dim} is: #{x}"
      dim +=1
    end
  end

  def inspect
    "#{self.object_id}"
  end

  alias magnitude length
end

vector = Vector.new(1,2,3,4)
puts vector.length
