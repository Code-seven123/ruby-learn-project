puts "Selamat datang di game tebak angka"
puts "----------------------------------"
puts "Mulai angka dari :"
from = gets.chomp.to_i
puts "ke angka: "
to = gets.chomp.to_i
puts "Berapa kesempatan :"
chance = gets.chomp.to_i
angkaAcak = rand(from..to)
no = 0
while no < chance
  puts "Kesempatan anda yang tersisa adalah #{chance - no}"
  input = gets.chomp.to_i
  if input < angkaAcak
    puts "angka yang anda masukan terlalu kecil"
  elsif input > angkaAcak
    puts "angka yang anda masukan terlalu besar"
  elsif input == angkaAcak
    puts "yeah anda berhasil!!!"
    break
  else
    puts "error"
  end
  no += 1
end
