class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.date :fecha
      t.string :direccion_salida
      t.string :distrito_salida
      t.string :direccion_llegada
      t.string :distrito_llegada
      t.string :modalidad
      t.string :referencia
      t.date :fecha_recojo
      t.string :hora_recojo
      t.string :tiempo
      t.string :pedido
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
