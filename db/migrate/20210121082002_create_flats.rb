class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.text :description, null: false
      t.integer :price_per_night, null: false
      t.integer :number_of_guests, null: false
      t.float :rating
      t.date :days_of_availability
      t.string :photos

      t.timestamps
    end
  end
end
