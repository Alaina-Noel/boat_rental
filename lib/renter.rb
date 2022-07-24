class Renter
  attr_reader :name, :credit_card_number, :boats

  def initialize(name, credit_card_number)
    @name = name
    @credit_card_number = credit_card_number
    @boats = []
  end


end
