class AddNameColumnToList < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :name, :string
    add_column :lists, :image, :VARCHAR
  end
end
