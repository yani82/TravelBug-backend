class CountrySerializer < ActiveModel::Serializer
    attributes :id, :name, :travelbugs, :comments 
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