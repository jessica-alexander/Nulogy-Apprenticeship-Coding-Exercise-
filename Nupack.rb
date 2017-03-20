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
end

company1 = Estimate.new(1299.99)

company1.flat_rate
