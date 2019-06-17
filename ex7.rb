class Product2

  def self.new_file(file)
    data = File.open(file,'r').readlines
    products_list = []

   data.each do |x|
    ls = x.split(', ')
    ls.delete_at(-1)
    products_list << ls
   end

   file = File.open('nuevo_catalogo.txt','w')
   products_list.each { |prod| file.puts "#{prod.join(', ')} "}
   file.close
  end
end

#Generar nuevo catalogo a partir de catalogo anterior
Product.new_file('catalogo.txt')
