class TravelbugSerializer < ActiveModel::Serializer
  attributes :id, :body, :format_country 
  # or country_id not id? 
  #  belongs_to :format_country, except: [:created_at, :updated_at] 

  # def user
  #   self.object.user do |u| 
  #     {
  #       name: u.name, 
  #       email: u.email, 
  #       id: u.id 
  #     } 
  #   end  
  # end 
 
end
