require './lib/boat'

RSpec.describe do
  it 'exists' do
    kayak = Boat.new(:kayak, 20)
    expect(kayak).to be_instance_of(Boat)
  end

  it 'has attributes' do
    kayak = Boat.new(:kayak, 20)
    expect(kayak.type).to eq(:kayak)
    expect(kayak.price_per_hour).to eq(20)
    expect(kayak.hours_rented).to eq(0)
  end

  it 'can be rented for any number of hours' do
    kayak = Boat.new(:kayak, 20)

    expect(kayak.hours_rented).to eq(0)
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour

    expect(kayak.hours_rented).to eq(3)
  end


end
