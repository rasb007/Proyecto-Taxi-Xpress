class AddColumnsc6ToReservas < ActiveRecord::Migration
  def change
    add_reference :reservas, :user, index: true, foreign_key: true
  end
end
