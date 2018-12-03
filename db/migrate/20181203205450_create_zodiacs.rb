class CreateZodiacs < ActiveRecord::Migration[5.2]
  def change
    create_table :zodiacs do |t|
      t.string :sign
      t.integer :start_date
      t.integer :end_date

      t.timestamps
    end
  end
end
