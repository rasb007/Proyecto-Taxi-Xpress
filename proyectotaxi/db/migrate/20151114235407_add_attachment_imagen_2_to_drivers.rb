class AddAttachmentImagen2ToDrivers < ActiveRecord::Migration
  def self.up
    change_table :drivers do |t|
      t.attachment :imagen_2
    end
  end

  def self.down
    remove_attachment :drivers, :imagen_2
  end
end
