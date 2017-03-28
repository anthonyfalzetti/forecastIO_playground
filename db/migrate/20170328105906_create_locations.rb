class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :zip
      t.float :lat
      t.float :long
      t.string :tempature

      t.timestamps
    end
  end
end
