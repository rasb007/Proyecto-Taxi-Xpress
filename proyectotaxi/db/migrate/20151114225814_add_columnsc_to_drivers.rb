class AddColumnscToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :username, :string
    add_column :drivers, :telefono, :string
    add_column :drivers, :movil, :string
    add_column :drivers, :direccion, :string
    add_column :drivers, :dni, :string, limit: 8
    add_column :drivers, :licencia, :string, limit: 9
  end
end
