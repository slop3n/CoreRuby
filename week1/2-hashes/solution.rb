class Hash
  def pick(*keys)
    select { |key, value| keys.include?(key) }
  end

  def except(*keys)
    hash = self
    keys.each do |x|
      hash.delete_if { |key, value| x == key }
    end
    hash
  end

  def compact_values
    self.select { |_key, value| value && true }
  end

  def defaults(hash)
    hash.each do |key, value|
      self[key] = value if !self.key?(key)
    end
    self
  end

  def except!(*keys)
    keys.each do |x|
      self.delete_if { |key, value| x == key }
    end
  end
end
