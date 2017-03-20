class Estimate

  attr_reader :base, :labour, :material, :estimate

  def initialize(base)
    @base = base
    @labour = 0
    @material = 0
    @estimate = 0

  end
