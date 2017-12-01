class ResetForeignKey < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :list_id, :integer
    add_column :lists, :activity, :string
  end
end
