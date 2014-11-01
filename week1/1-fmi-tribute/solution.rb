class Array
  def to_hash
    each_with_object({}) { |element, hash| hash[element[0]] = element[1] }
  end

  def index_by(&block)
    map(&block).zip(self).to_hash
    Hash[map(&block).zip(self)]
  end

  def subarray_count(subarray)
    count = 0
    self.each_cons(subarray.size) do |x|
      count += 1 if x == subarray
    end
    count
  end

  def occurences_count
    self.to_s.downcase
    times_met = Hash.new(0)
    0.upto(self.length - 1) do |x|
      times_met[self[x]] += 1
    end
    times_met
  end
end
