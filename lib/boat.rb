class Boat
  attr_reader :price_per_hour, :type, :hours_rented

  def initialize(type, price_per_hour)
    @type = type
    @price_per_hour = price_per_hour
    @hours_rented = 0
  end

  def add_hour
    @hours_rented += 1
  end

end
