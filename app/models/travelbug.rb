class Travelbug < ApplicationRecord
    belongs_to :country

    def format_country
          {
            id: self.country.id, 
            body: self.country.name,
            comments: self.country.comments
            # name: self.user.name, 
            # email: self.user.email, 
            # id: self.user.id 
          } 
        end  
end
