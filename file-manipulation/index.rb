class CrudFile
  attr_accessor :path
  def initialize
    self.path = "./temp"
  end
  def createFile(file, data)
    puts "write #{data} to file #{self.path}/#{file}"
    File.open("#{self.path}/#{file}", "w") do |file|
      file.write(data)
    end
  end
  def newLine(file, data)
    puts "add new data \"#{data}\" to file #{self.path}/#{file}"
    File.open("#{self.path}/#{file}", "a") do |file|
      file.puts(data)      
    end
  end
  def deleteFile(file)
    puts "delete file #{self.path}/#{file}"
    File.delete("#{self.path}/#{file}")
  end
  def readFile(file)
    puts "read file #{self.path}/#{file}"
    File.open("#{self.path}/#{file}", "r") do |file|
      puts file.read
    end
  end
end


fruits = CrudFile.new
fruits.createFile("melon.txt", "melon bewarna hijau")
fruits.newLine("melon.txt", "\nmelon itu bulat")
fruits.readFile("melon.txt")
fruits.deleteFile("melon.txt")
