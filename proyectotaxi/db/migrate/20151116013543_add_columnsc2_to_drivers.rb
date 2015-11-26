class AddColumnsc2ToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :marca, :string
    add_column :drivers, :modelo, :string
    add_column :drivers, :placa, :string
    add_column :drivers, :color, :string
    add_column :drivers, :tipo, :string
  end
end
