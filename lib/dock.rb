class Dock
  attr_reader :name, :max_rental_time, :customers

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @customer_rentals = []
  end

  def rent(boat, renter)
    @customer_rentals << [boat, renter]
  end

  def rental_log
    @customer_rentals.to_h
  end

end
