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

  def find_card_to_charge(boat)
    @customer_rentals.find {|customer_rental| customer_rental[0] == boat}[1].credit_card_number
  end

  def find_boat_to_charge(boat)
    @customer_rentals.find {|customer_rental| customer_rental[0] == boat}[0]
  end

  def charge(boat)
  hash = Hash.new
  hash[:card_number] = find_card_to_charge(boat)
    if find_boat_to_charge(boat).hours_rented > @max_rental_time
      hash[:amount] = @max_rental_time * find_boat_to_charge(boat).price_per_hour
    else
      hash[:amount] = find_boat_to_charge(boat).hours_rented * find_boat_to_charge(boat).price_per_hour
    end
    hash
  end

end
