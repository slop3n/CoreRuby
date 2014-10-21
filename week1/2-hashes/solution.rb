class Hash
  def pick(*keys)
    self.select { |key,value| keys.include?(key) }
  end

  def except(*keys)
    hash = self
    keys.each do |x|
    hash.delete_if { |key, value| x == key }
    end
    hash
  end

  def compact_values
    self.select { |key, value| value && true }
  end

  def defaults(hash)
    
  end

  def except!(*keys)
      keys.each do |x|
      self.delete_if { |key, value| x == key }
      end
      self
  end
end

puts({"a" => 5, "b" => 6, "2" => 3, "c" => nil, "d" => false}.pick("b", "2"))
puts({"a" => 5, "b" => 6, "2" => 3, "c" => nil, "d" => false}.except("b", "2"))
puts({"a" => 5, "b" => 6, "2" => 3, "c" => nil, "d" => false}.compact_values)
