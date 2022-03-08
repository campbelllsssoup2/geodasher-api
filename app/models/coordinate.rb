class Coordinate < ApplicationRecord
    has_many :trip_coordinates
    has_many :route_coordinates
    validates :latitude, comparison: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
    validates :longitude, comparison: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
end
