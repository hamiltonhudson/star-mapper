class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :birthday
      t.integer :birth_year
      t.integer :zodiac_id
      t.integer :location_id

      t.timestamps
    end
  end
end
