class AddColumnsToZodiacs < ActiveRecord::Migration[5.2]
  def change
    add_column :zodiacs, :keywords, :string
    add_column :zodiacs, :symbol, :string
    add_column :zodiacs, :element, :string
    add_column :zodiacs, :quality, :string
    add_column :zodiacs, :vibe, :string
    add_column :zodiacs, :mental_traits, :string
    add_column :zodiacs, :physical_traits, :string
  end
end
