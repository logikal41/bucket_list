class UpdateDestinations < ActiveRecord::Migration[5.1]
  def change
        drop_table :destinations
    
        create_table :destinations do |t|
          t.text :name
          t.belongs_to :list, foreign_key: true
    
          t.timestamps
        end
  end
end
