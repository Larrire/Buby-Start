x = (1..20).to_a

p x.select { |number| number.odd? }
p x.select { |number| number.even? }