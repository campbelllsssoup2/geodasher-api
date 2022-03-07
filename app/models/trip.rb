class Trip < ApplicationRecord
  belongs_to :route
  belongs_to :user
  has_many :trip_coordinates
end
