# print to terminal
puts "Hello world!!"

# variable
a = 10
b = 10
c = a + b
puts "hasil #{c}"

# if
if c == 20
  puts "benar"
end
puts c == 20

nilai = 120

# if-else if-else
if nilai > 100
  puts "A"
elsif nilai > 50
  puts "B"
else 
  puts "error"
end

# arrays
fruits = ["apple", "lemon", "banana"]
puts fruits

# array each
no = 1
fruits.each do |name|
  puts "#{no}. #{name}"
  no += 1
end

# hashes and symbol
data = {
  "name" => "budi",
  "age" => 18
}
data2 = {
  "name": "nugroho",
  "age": 20
}
puts data2
puts "name from data2 " + data2[:name]
puts "Name #{data['name']}"
puts "Age #{data['age']}"

# function and parameter
def tambah(a, b)
  puts a + b
end
tambah(10, 20)
tambah(100, 100)

# class
class Menu
  # attribute
  attr_accessor :name
  attr_accessor :harga

  # default value
  def initialize
    self.name = "ayam"
    self.harga = 5000
  end

  # method
  def check(uang)
    puts "uang kamu #{uang}, dan harga #{self.harga}"
    if self.harga > uang
      puts "uang kamh kurang"
    elsif self.harga < uang
      puts "uang kamu kelebihan"
    elsif self.harga == uang
      puts "uang kamu cukup"
    else
      puts "error"
    end
  end
end

bakwan = Menu.new
bakwan.name = "bakwan"
bakwan.harga = 2000
puts "#{bakwan.name} is #{bakwan.harga}"
bakwan.check(1000)

ayam = Menu.new
puts "#{ayam.name} is #{ayam.harga}"


# getting input from terminal

name = gets.chomp
puts "Hello #{name}"

