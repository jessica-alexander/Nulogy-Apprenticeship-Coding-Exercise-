# gem 'activerecord', '=4.2.7'
# require 'active_record'
# require 'mini_record'
#
# ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'nupack.sqlite3')


# class Estimate < ActiveRecord::Base

class Estimate

  attr_reader :id

  attr_accessor :base, :labour, :material, :estimate

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

    else type_of_material == nil
      @material = 0

    end
  end

  def estimate

   @estimate = flat_rate + @labour + @material

   return @estimate.round(2)
  end

end

company1 = Estimate.new(1299.99)

company1.flat_rate
company1.labour(3)
company1.material('food')
company1.estimate

company2 = Estimate.new(5432.00)
company2.labour(1)
company2.material('pharmaceuticals')
company2.estimate

company3 = Estimate.new(12456.95)
company3.labour(4)
company3.material('books')
company3.estimate
