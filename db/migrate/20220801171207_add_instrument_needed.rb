class AddInstrumentNeeded < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :instrument_needed, :string
  end
end
