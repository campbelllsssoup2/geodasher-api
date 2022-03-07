class Route < ApplicationRecord
  belongs_to :user
  has_many :trips
  has_many :route_coordinates
end
