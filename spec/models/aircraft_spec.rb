require 'rails_helper'

RSpec.describe Aircraft, type: :model do
  it 'name presence' do
    expect(Aircraft.new(airtype: nil).valid?).to eq(false)
  end
end
