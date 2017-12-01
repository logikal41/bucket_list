class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :destination
      t.string :activity

      t.timestamps
    end
  end
end
