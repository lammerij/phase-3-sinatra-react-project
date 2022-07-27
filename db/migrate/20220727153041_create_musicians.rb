class CreateMusicians < ActiveRecord::Migration[6.1]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :instrument
      t.integer :years_experience
      t.string :city
      t.integer :band_id
    end
  end
end