module MyEnumerable
  def map
    # Your code goes here.
  end

  def filter
    # Your code goes here.
  end

  def reject
    # Your code goes here.
  end

  def reduce(initial = nil)
    # Your code goes here.
  end

  def any?
    # Your code goes here.
  end

  def all?
    # Your code goes here
  end

  def each_cons(n)
    # Your code goes here
  end

  def include?(element)
    self.each do |x|
      return true if element == x
    end
    return false
  end

  def count(element = nil)
    count = 0
    size = 0
    self.each do |x|
      size += 1
      count += 1 if x == element
    end
    return size if count == 0
    return count
  end

  def size
    size = 0
    self.each do |x|
      size += 1
    end
  end

  # Groups the collection by result of the block.
  # Returns a hash where the keys are the evaluated
  # result from the block and the values are arrays
  # of elements in the collection that correspond to
  # the key.
  def group_by
  end

  def min
    # Your code goes here.
  end

  def min_by
    # Your code goes here.
  end

  def max
    # Your code goes here.
  end

  def max_by
    # Your code goes here.
  end

  def minmax
    # Your code goes here.
  end

  def minmax_by
    # Your code goes here.
  end

  def take(n)
    # Your code goes here.
  end

  def take_while
    # Your code goes here.
  end

  def drop(n)
    # Your code goes here.
  end

  def drop_while
    # Your code goes here.
  end
end

puts ([1,2,4,4,4,4,5].count(2))
