class CreateTravelbugs < ActiveRecord::Migration[6.0]
  def change
    create_table :travelbugs do |t|
      t.string :body 
      t.integer :user_id 
      
      t.timestamps
    end
  end
end
