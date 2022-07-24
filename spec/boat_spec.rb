require './lib/boat'
require './lib/renter'

RSpec.describe do
  it 'exists' do
    kayak = Boat.new(:kayak, 20)
    expect(kayak).to be_instance_of(Boat)
  end

  it 'has attributes' do
    kayak = Boat.new(:kayak, 20)
    expect(kayak.type).to eq(:kayak)
    expect(kayak.price_per_hour).to eq(20)
  end


end
