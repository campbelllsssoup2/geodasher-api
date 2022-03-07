class Coordinate < ApplicationRecord
    has_many :trip_coordinates
    has_many :route_coordinates
end
