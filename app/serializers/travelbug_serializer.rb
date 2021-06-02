class TravelbugSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_name
  # belongs_to :user 
end
