class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.string :apellido
      t.string :nombre_empresa
      t.string :ruc
      t.string :direccion
      t.string :email
      t.string :contraseña
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
