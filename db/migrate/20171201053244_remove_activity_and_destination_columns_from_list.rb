class RemoveActivityAndDestinationColumnsFromList < ActiveRecord::Migration[5.1]
  def change
    remove_column :lists, :activity
    remove_column :lists, :destination
  end
end
