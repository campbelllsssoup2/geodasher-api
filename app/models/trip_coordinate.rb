class TripCoordinate < ApplicationRecord
  belongs_to :trip
  belongs_to :coordinate
end
