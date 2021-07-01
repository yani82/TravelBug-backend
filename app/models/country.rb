class Country < ApplicationRecord
    has_many :comments
    has_many :travelbugs
end
