class FruitItem
    def initialize(name, quantity)
        @name = name
        @quantity = quantity
    end

    def getName
        @name
    end

    def getQuantity
        @quantity
    end
end

def fruitExists(list, newFruit)
    for fruit in list
        if( fruit.getName === newFruit )
            return true
        end
    end
    return false
end

fruits = ['first fruit']

fruits.pop

while true
    puts "New fruit:"
    fruit = gets.chomp

    if( fruit === 'stop' )
        break
    elsif( fruitExists(fruits, fruit) )
        puts 'This fruit is already in our list'
    else
        puts "How many:"
        quantity = gets.chomp
        fruitItem = FruitItem.new(fruit, quantity)
        fruits.push(fruitItem)
    end
end

fruits.each { |fruit| puts "#{fruit.getQuantity} | #{fruit.getName.capitalize}" }
