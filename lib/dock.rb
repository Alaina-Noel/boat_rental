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

  def charge(boat)
  card_to_charge = @customer_rentals.find {|customer_rental| customer_rental[0] == boat}[1].credit_card_number
  boat_to_charge = @customer_rentals.find {|customer_rental| customer_rental[0] == boat}[0]

  hash = Hash.new(0)
  hash[:card_number] = card_to_charge
  # require "pry"
  # binding.pry
    if boat_to_charge.hours_rented > @max_rental_time
      hash[:amount] = @max_rental_time * boat_to_charge.price_per_hour
      hash
    elsif boat_to_charge.hours_rented <= max_rental_time
      hash[:amount] = boat_to_charge.hours_rented * boat_to_charge.price_per_hour
      hash
    end
  end

end
