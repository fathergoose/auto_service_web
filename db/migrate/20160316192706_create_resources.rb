class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.text :description
      t.string :city
      t.integer :state
      t.string :zipcode
      t.boolean :food
      t.boolean :health
      t.boolean :shelter
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.string :street
      t.integer :shares

      t.timestamps null: false
    end
  end
end
