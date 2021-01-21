class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.text :description, null: false
      t.integer :price_per_night, null: false
      t.integer :number_of_guests, null: false
      t.float :rating, array: true
      t.date :days_of_availability, array: true
      t.string :photos, array: true

      t.timestamps
    end
  end
end
