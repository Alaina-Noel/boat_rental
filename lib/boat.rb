class Boat
  attr_reader :price_per_hour, :type

  def initialize(type, price_per_hour)
    @type = type
    @price_per_hour = price_per_hour
  end

end
