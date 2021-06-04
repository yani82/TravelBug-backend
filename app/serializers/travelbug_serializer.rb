class TravelbugSerializer < ActiveModel::Serializer
  attributes :id, :body, :format_user
   belongs_to :format_user, except: [:created_at, :updated_at] 

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
