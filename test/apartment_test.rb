require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  attr_reader :a1

  def setup
    @a1 = Apartment.new({number: 1, monthly_rent: 800, bathrooms: 1, bedrooms: 1})
  end

  def test_it_exists
    assert_instance_of Apartment, a1
  end

  def test_it_has_a_number
    assert_equal 1, a1.number
  end

  def test_it_has_monthly_rent
    assert_equal 800, a1.monthly_rent
  end

  def test_it_has_bathrooms
    assert_equal 1, a1.bathrooms
  end

  def test_it_has_bedrooms
    assert_equal 1, a1.bedrooms
  end

end
