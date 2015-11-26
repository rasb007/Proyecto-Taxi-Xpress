class AddColumnsc3ToReservas < ActiveRecord::Migration
  def change
    add_reference :reservas, :driver, index: true, foreign_key: true
  end
end
