class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :username
      t.text :description 
      t.integer :country_id

      t.timestamps
    end
  end
end
