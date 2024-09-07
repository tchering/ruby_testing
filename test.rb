# frozen_string_literal: true

# base class for a pet
class Pet
  attr_reader :name, :breed, :color

  def initialize(name, breed = nil, color = nil)
    @name = name
    @breed = breed
    @color = color
  end

  def meal_time
    "#{name} paws at empty food bowl"
  end
end

class Dog < Pet
  def talk
    'WOOF!'
  end

  def sleeping?
    true
  end

  def barking?
    false
  end
end

class Cat < Pet
  def talk
    'meow'
  end

  def hiding?
    true
  end

  def hungry?
    false
  end
end


dog = Dog.new('Bruno')
p dog.talk
p dog.meal_time
p dog.barking?
cat = Cat.new('Kitty')
puts "Cats start from her"
p cat.talk
p cat.hiding?
p cat.meal_time
