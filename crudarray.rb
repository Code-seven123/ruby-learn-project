class CrudArray
  attr_accessor :array
  def initialize
    self.array = []
  end
  def add(index, data)
    puts "Adding #{data} to array by index #{index}"
    self.array.insert(index - 1, data)
  end
  def show
    no = 1
    self.array.each do |item|
      puts "#{no}. #{item}"
      no += 1
    end
  end
  def delete(index)
    if index - 1 < 0
      return puts "Error"
    end
    puts "Delete #{self.array[index - 1]}"
    self.array.delete_at(index - 1)
  end
  def update(index, data)
    puts "update #{self.array[index]} for #{data}"
    self.array[index-1] = data
    no = 1
    self.array.each do |item|
      puts "#{no}. #{item}"
      no += 1
    end
  end
end
