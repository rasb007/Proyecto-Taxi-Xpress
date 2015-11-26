class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :telefono, :string
    add_column :users, :movil, :string
    add_column :users, :direccion, :string
  end
end
