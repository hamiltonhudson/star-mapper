class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :birth_month
      t.string :birth_day
      t.integer :birth_year
      t.integer :zodiac_id
      t.integer :location_id

      t.timestamps
    end
  end
end
