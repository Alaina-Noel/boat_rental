require './lib/boat'
require './lib/renter'

RSpec.describe do
  it 'exists' do
    kayak = Boat.new(:kayak, 20)
    expect(kayak).to be_instance_of(Boat)
  end
end
