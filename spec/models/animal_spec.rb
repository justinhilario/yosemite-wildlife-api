require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'has a kingdom' do
    kingdom = Animal.create kingdom:' '
    expect(kingdom.errors[:kingdom]).to_not be_empty
  end
  it 'has a commmon name' do
    common = Animal.create common_name:' '
    expect(common.errors[:common_name]).to_not be_empty
  end
  it 'common name is not the same as kingdom' do
    common = Animal.create common_name:' '
    expect(common.errors[:common_name]).not_to equal(:kingdom)
  end
end
