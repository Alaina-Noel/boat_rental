require './lib/boat'
require './lib/renter'
require './lib/dock'

RSpec.describe do
  it 'exists' do
    dock = Dock.new("The Rowing Dock", 3)
    expect(dock).to be_instance_of(Dock)
  end

  it 'has attributes' do
    dock = Dock.new("The Rowing Dock", 3)
    expect(dock.name).to eq("The Rowing Dock")
    expect(dock.max_rental_time).to eq(3)
  end

  it 'can show a log of all rentals as a hash' do
    dock = Dock.new("The Rowing Dock", 3)
    kayak_1 = Boat.new(:kayak, 20)
    kayak_2 = Boat.new(:kayak, 20)
    sup_1 = Boat.new(:standup_paddle_board, 15)
    patrick = Renter.new("Patrick Star", "4242424242424242")
    eugene = Renter.new("Eugene Crabs", "1313131313131313")
    dock.rent(kayak_1, patrick)
    dock.rent(kayak_2, patrick)
    dock.rent(sup_1, eugene)
    hash = { kayak_1 => patrick, kayak_2 => patrick, sup_1 => eugene }
    #is this correct
    expect(dock.rental_log).to eq(hash)
  end

  it 'can show a hash of a credit card number & amount to charge for a particular boat' do
    dock = Dock.new("The Rowing Dock", 3)
    kayak_1 = Boat.new(:kayak, 20)
    kayak_2 = Boat.new(:kayak, 20)
    sup_1 = Boat.new(:standup_paddle_board, 15)
    patrick = Renter.new("Patrick Star", "4242424242424242")
    eugene = Renter.new("Eugene Crabs", "1313131313131313")
    dock.rent(kayak_1, patrick)
    dock.rent(kayak_2, patrick)
    dock.rent(sup_1, eugene)
    kayak_1.add_hour
    kayak_1.add_hour
    sup_1.add_hour
    sup_1.add_hour
    sup_1.add_hour
    sup_1.add_hour
    sup_1.add_hour

    hash_kayak = { :card_number => "4242424242424242", :amount => 40 }

    expect(dock.charge(kayak_1)).to eq(hash_kayak)

    hash_sup = { :card_number => "1313131313131313", :amount => 45 }

    expect(dock.charge(sup_1)).to eq(hash_sup)
  end

end
