class AddHired < ActiveRecord::Migration[6.1]
  def change
    add_column :musicians, :hired, :boolean
  end
end
