class Animal < ApplicationRecord
    has_many :sightings
    
    validates :common_name, :kingdom, presence: true

    validates :common_name, :latin_name, uniqueness: true
    
    validate :common_cannot_equal_latin

    def common_cannot_equal_latin
        if common_name == latin_name
            errors.add(:common_name, "Common name cannot be the same as the latin name.")
        end
    end

end
