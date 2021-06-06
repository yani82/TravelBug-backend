class Comment < ApplicationRecord
    belongs_to :country 
    belongs_to :user 
end
