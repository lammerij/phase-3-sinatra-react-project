class AddRetired < ActiveRecord::Migration[6.1]
  def change
    add_column :musicians, :retired, :boolean
  end
end
