loop do
  puts "a:> "
  a = gets.chomp.to_i
  puts "b:> "
  b = gets.chomp.to_i
  puts "\n1. kali\n2. bagi\n3. tambah\n4. kurang"
  type = gets.chomp.to_i
  if type == 1
    puts "hasil #{a * b}"
  elsif type == 2
    puts "hasil #{a / b}"
  elsif type == 3
    puts "hasil #{a + b}"
  elsif type == 4
    puts "hasil #{a - b}"
  else 
    puts "kategori tidak termasuk"
  end
  puts "Apakah mau di ulangi? (yes/no) :"
  no = gets.chomp.downcase
  if no == "no"
    break
  end
end
