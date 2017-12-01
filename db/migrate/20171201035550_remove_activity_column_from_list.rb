class RemoveActivityColumnFromList < ActiveRecord::Migration[5.1]
  def change
    remove_column :lists, :activity
  end
end
