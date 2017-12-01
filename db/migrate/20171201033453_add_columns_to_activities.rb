class AddColumnsToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :name, :string
    add_column :activities, :image, :varchar
    add_column :activities, :list_id, :integer
    
    add_foreign_key :activities, :lists
  end
end
