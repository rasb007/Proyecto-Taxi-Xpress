class AddAttachmentImagen4ToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :imagen_4
    end
  end

  def self.down
    remove_attachment :services, :imagen_4
  end
end
