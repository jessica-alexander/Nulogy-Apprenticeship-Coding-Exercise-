require 'minitest/autorun'
require_relative '../nupack'

class TestEstimate < Minitest::Test

  def setup
    @estimate = Estimate.new
  end
end
