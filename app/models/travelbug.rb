class Travelbug < ApplicationRecord
    belongs_to :user

    def format_user
          {
            name: self.user.name, 
            email: self.user.email, 
            id: self.user.id 
          } 
        end  
end
