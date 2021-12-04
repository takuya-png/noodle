class Shop
  attr_reader :items
  
  def initialize(name:, items:)
    @name = name
    @items = items
  end

  def display
    puts "ようこそ #{@name} へ"
    puts "当店のメニューはこちらです"
    puts "*" * 40
    @items.each.with_index(1) do |item, index|
      puts "#{index.to_s.rjust(2)}. #{item.name.mb_ljust(24)}: #{item.price.to_s.rjust(4)}円"
    end
    puts "*" * 40
  end

  def sell(user, item)
    puts "#{item.name}ですね。#{item.price}円 になります"
    puts "#{user.money}円 頂戴します"
    puts "お釣りは #{user.money - item.price}円 です"
    puts "ゆっくり#{item.name}をお楽しみください"
  end
end