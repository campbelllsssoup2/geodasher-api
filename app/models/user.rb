class User < ApplicationRecord
    has_many :routes
    has_many :trips
    validates :age, comparison: { less_than_or_equal_to: 130, greater_than_or_equal_to: 18 }
    validates :username, length: { minimum: 5, maximum: 12 }
end
