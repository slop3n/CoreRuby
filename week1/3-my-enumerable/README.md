# Overview

The great power of Ruby iteration comes out of a simple module. I bet, you can
implement part of it as well.

## Resources

Reading the Enumerable documentation one more time won't hurt. Read it again,
and again, and again... You get the idea :)

* http://www.ruby-doc.org/core-2.1.3/Enumerable.html

## My Enumerable

Implement a module called `MyEnumerable` which implements a similar module to
Enumerable, but with own little twist. _Meaning, we have methods Enumerable
doesn't, we named filter how we liked it, etc._

```ruby
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
    # Your code goes here.
  end

  # Yield each consequative n elements.
  def each_cons(n)
    # Your code goes here.
  end

  def include?(element)
    # Your code goes here.
  end

  # Count the occurences of an element in the collection. If no element is
  # given, count the size of the collection.
  def count(element = nil)
    # Your code goes here.
  end

  # Count the size of the collection.
  def size
    # Your code goes here.
  end
end
```

## Aliases

As a bonus, create aliases for the following methods, so they can be invoked
with different names.

```
#map -> #collect
#filter -> #select
#reduce -> #foldl
```
