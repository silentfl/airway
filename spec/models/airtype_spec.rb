require 'rails_helper'

RSpec.describe Airtype, type: :model do
  it 'name presence' do
    expect(Airtype.new(name: '').valid?).to eq(false)
  end
end
