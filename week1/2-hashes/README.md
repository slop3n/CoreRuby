# FMI

How can I follow those FMI problems, heh? Watashi wa besuto o tsukushimasu!

## Resources

Enumerable is a gem. Go through its documentation. Hash builds on top of it.

* http://www.ruby-doc.org/core-2.1.3/Enumerable.html
* http://www.ruby-doc.org/core-2.1.3/Hash.html

## Problems

### Hash#pick

`Hash#pick` returns a new hash, with only the specified keys in it.

```ruby
class Hash
  def pick(*keys)
    # Your code goes here.
  end
end

>> {a: 1, b: 2, c: 3}.pick(:a, :b)
=> {:a=>1, :b=>2}
```

### Hash#except

`Hash#except` returns a new hash, without the specified keys in it. Kind of like
a reversed `Hash#pluck`.

```ruby
class Hash
  def except(*keys)
    # Your code goes here.
  end
end

>> {a: 1, b: 2, d: nil}.except(:d)
=> {:a=>1, :b=>2}
```

### Hash#compact_values

`Hash#compact_values` returns a new hash, with only the truthy keys in it.

```ruby
class Hash
  def compact_values
    # Your code goes here.
  end
end

>> {a: 1, b: 2, d: nil}.compact_values
=> {:a=>1, :b=>2}
```

### Hash#default

`Hash#default` returns a new hash, setting values only if they were not already
present in the hash.

```ruby
class Hash
  def default(hash)
    # Your code goes here.
  end
end

>> {a: 1, b: 2}.default(a: 4, c: 3)
=> {:a=>2, :b=>2, :c=>3}
```

## Bang Bang

Add bang version methods (e.g. Hash#pick!) that change the hash inplace. Think
whether you can reuse the implementations with the non-bang version methods.

[@skanev]: http://github.com/skanev
[@mitio]: http://github.com/mitio
