class User < ApplicationRecord
    has_many :comments 
    # has_many :countries, through :comments 
end
