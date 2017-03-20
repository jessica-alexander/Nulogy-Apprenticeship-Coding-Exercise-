class Estimate

  attr_reader :base, :labour, :material, :estimate

  def initialize(base)
    @base = base
    @labour = 0
    @material = 0
    @estimate = 0

  end

  def flat_rate


    return @base * 1.05

  end

  def labour(num_of_people)

    @labour = (num_of_people * 0.012) * flat_rate
  end

  def material(type_of_material)

    if type_of_material == 'pharmaceuticals'
      @material = flat_rate * 0.075

    elsif type_of_material == 'food'
      @material = flat_rate * 0.13

    elsif type_of_material == 'electronics'
      @material = flat_rate * 0.02

    end
  end

end

company1 = Estimate.new(1299.99)

company1.flat_rate
company1.labour(3)
company1.material('pharmaceuticals')
company1.material('food')
