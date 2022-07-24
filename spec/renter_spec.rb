require './lib/boat'
require './lib/renter'


RSpec.describe do
  it 'exists' do
    renter = Renter.new("Patrick Star", "4242424242424242")
      expect(renter).to be_instance_of(Renter)
  end

  it 'has attributes' do
    renter = Renter.new("Patrick Star", "4242424242424242")
    expect(kayak.name).to eq("Patrick Star")
    expect(kayak.credit_card_number).to eq("4242424242424242")
  end

end
