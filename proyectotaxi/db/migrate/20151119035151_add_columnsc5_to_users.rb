class AddColumnsc5ToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :reserva, index: true, foreign_key: true
  end
end
