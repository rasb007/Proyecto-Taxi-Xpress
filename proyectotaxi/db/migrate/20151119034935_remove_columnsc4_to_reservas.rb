class RemoveColumnsc4ToReservas < ActiveRecord::Migration
  def change
    remove_reference :reservas, :user, index: true, foreign_key: true
  end
end
