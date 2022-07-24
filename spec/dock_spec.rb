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

end
