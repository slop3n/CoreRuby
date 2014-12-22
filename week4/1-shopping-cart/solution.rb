require 'bigdecimal'
require 'bigdecimal/util'

class Cart
  attr_accessor :cart_inventory, :total

  def initialize(items)
    @cart_inventory = items.flatten
    @total = 0
  end

  def add(item_to_add, times = 1)
    current_ingridient = @cart_inventory.find do |item|
      item.ingridient == item_to_add
    end
    if current_ingridient
      current_ingridient.times_met = times
      return "Cannot have item that many times" if current_ingridient.times_met <= 0 || current_ingridient.times_met > 99
      @total += (current_ingridient.times_met * current_ingridient.price)
      @cart_inventory << current_ingridient
    end
  end

  def invoice
    puts "+" + "-" * 48 + "+" + "-" * 9 + "+"
    puts "| Name".ljust(40) + "qty |".rjust(10) + "price |".rjust(10)
    puts "+" + "-" * 48 + "+" + "-" * 9 + "+"
    @cart_inventory.each do |item|
      puts "| #{item.ingridient}".ljust(40) + "#{item.times_met} |".rjust(10) + "#{item.price} |".rjust(10)
    end
    puts "+" + "-" * 48 + "+" + "-" * 9 + "+"
    puts "| TOTAL".ljust(40) + "|".rjust(10) + "#{@total} |".rjust(10)
    puts "+" + "-" * 48 + "+" + "-" * 9 + "+"
    # p @cart_inventory
  end

  def to_s
    @cart_inventory.each do |item|
      puts "#{item}"
    end
  end
end

class Inventory
  attr_accessor :inventory

  def initialize(*stuff)
    @inventory = stuff.flatten
  end

  def register(ingridient, price)
    current = Ingridient.new(ingridient, price)
    @inventory << current
  end

  def new_cart
    Cart.new(@inventory)
  end

  def to_s
    inventory.each do |item|
      puts "#{item.ingridient}, #{item.price}"
    end
  end
end

class Ingridient
  attr_accessor :ingridient, :price, :times_met

  def initialize(ingridient, price)
    @ingridient = ingridient
    @price = price.to_d
    @times_met = 0
    raise "Invalid parameters passed" if @ingridient.length > 40 || @price > 999.99 || @price < 0.01
  end

  def to_s
    "#{ingridient} #{price}"
  end
end

inv = Inventory.new
inv.register("cabbage", 100)
inv.register("potato", 200)
inv.register "tomato", 300

cart = inv.new_cart

cart.add "cabbage", 2
cart.add "potato", 5
cart.add "tomato"
cart.add "carrots", 3

puts cart.invoice
