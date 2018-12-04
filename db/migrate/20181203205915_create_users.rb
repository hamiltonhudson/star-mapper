class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :birthday
      t.integer :birth_year
      t.references :zodiac, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
