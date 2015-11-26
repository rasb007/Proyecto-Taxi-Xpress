class AddColumnsc1ToDrivers < ActiveRecord::Migration
  def change
    add_reference :drivers, :auto, index: true, foreign_key: true
  end
end
