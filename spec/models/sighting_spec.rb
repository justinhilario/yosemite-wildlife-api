require 'rails_helper'

RSpec.describe Sighting, type: :model do
    it 'has a date' do
        date = Sighting.create date:''
        expect(date.errors[:date]).to_not be_empty
      end
      it 'has a latitude' do
        latitude = Sighting.create latitude:' '
        expect(latitude.errors[:latitude]).to_not be_empty
      end
      it 'has a longitude' do
        longitude = Sighting.create longitude:' '
        expect(longitude.errors[:longitude]).to_not be_empty
      end
end
