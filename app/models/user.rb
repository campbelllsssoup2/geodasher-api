class User < ApplicationRecord
    has_many :routes
    has_many :trips
end
