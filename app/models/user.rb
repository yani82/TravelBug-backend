class User < ApplicationRecord
    has_many :comments 
    # belongs_to :travelbugs
    has_many :countries, through: :comments
    # has_many :reviewed_countries, through: :comments, source: :country  
end
