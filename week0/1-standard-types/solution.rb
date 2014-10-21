def histogram(string)
  string.downcase
  times_met = {}
  times_met.default = 0
  0.upto(string.length - 1) do |x|
    times_met[string[x]] += 1
  end
  times_met
end

def prime?(n)
  2.upto(Math.sqrt(n)) do |x|
    if n % x == 0
      return false
    else
      return true
    end
  end
end

def ordinal(n)
  return n.to_s + 'th' if [11, 12, 13].include?(n % 100)
  case n % 10
  when 1 then n.to_s + 'st'
  when 2 then n.to_s + 'nd'
  when 3 then n.to_s + 'rd'
  else n.to_s + 'th'
  end
end

def palindrome?(input)
  string = input.to_s.downcase.tr(' ', '')
  string == string.reverse
end

def anagram?(first, second)
  histogram(first) == histogram(second)
end

def remove_suffix(string, pattern)
  output = string.to_s
  output[pattern] = ''
  output.strip
end

def digits(input)
  input.to_s.chars.map(&:to_i)
  # arr = []
  # while input > 0
  # arr.push(input % 10)
  # input /= 10
  # end
  # arr.reverse.to_s
end

def fizzbuzz(input)
  answer = []
  input.each do |x|
    case
    when x % 15 == 0 then answer << :fizzbuzz
    when x % 5 == 0 then answer << :buzz
    when x % 3 == 0 then answer << :fizz
    else answer <<  x
    end
  end
  answer
end

def count(array)
  array.each.to_s.downcase
  hash = {}
  hash.default = 0
  0.upto(array.length - 1) do |x|
    hash[array[x]] += 1
  end
  hash
end

puts count %w(asd ASD qwe qwe ZXC zxc)