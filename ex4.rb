class Dog
  attr_reader :name
  def initialize(opts={})
    @name = opts[:nombre]
  end

  def ladrar
    puts "#{self.name} está ladrando"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

kilterry = Dog.new(propiedades)

puts kilterry.ladrar
