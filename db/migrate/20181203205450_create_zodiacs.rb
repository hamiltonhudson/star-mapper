class CreateZodiacs < ActiveRecord::Migration[5.2]
  def change
    create_table :zodiacs do |t|
      t.string :sign
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
