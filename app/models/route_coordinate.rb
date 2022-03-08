class RouteCoordinate < ApplicationRecord
  belongs_to :coordinate
  belongs_to :route
  validates :index, comparison: { greater_than_or_equal_to: 0 }
end
