class AddAttachmentImagen5ToAbouts < ActiveRecord::Migration
  def self.up
    change_table :abouts do |t|
      t.attachment :imagen_5
    end
  end

  def self.down
    remove_attachment :abouts, :imagen_5
  end
end
