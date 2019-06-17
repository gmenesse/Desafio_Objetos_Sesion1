class Product

  attr_reader :name, :size

  def initialize(name, *size)
    @name = name
    @size = size.map(& :to_i)
  end

  def average
    @size.inject(0) {|sum, n| sum + n} / @size.size.to_f
  end
end

file = File.open('catalogo.txt', 'r')
data = file.readlines
file.close

products_list = []
  data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
  end

products_list.size.times do |product|
  puts "El precio promedio por talla del producto #{products_list[product].name} es de #{products_list[product].average}"
  # puts product.average
end
