class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :direccion
      t.string :telefono
      t.string :email

      t.timestamps null: false
    end
  end
end
