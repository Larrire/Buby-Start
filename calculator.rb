def plus(n1, n2)
    n1 + n2
end

def minus(n1, n2)
    n1 - n2
end

def times(n1, n2)
    n1 * n2
end

def divide(n1, n2)
    n1 / n2
end

puts "Ruby App Started"

while true
    puts "Operation:"
    operation = gets.chomp

    if(operation === 'stop')
        break;
    else
        puts "Number 1:"
        number1 = gets.chomp

        puts "Number 2:"
        number2 = gets.chomp
        puts send(operation, number1.to_i, number2.to_i);
    end
end