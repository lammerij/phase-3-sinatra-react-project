class AddFired < ActiveRecord::Migration[6.1]
  def change
    add_column :musicians, :fired, :boolean
  end
end
