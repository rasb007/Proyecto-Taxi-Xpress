class AddAttachmentImagen1ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :imagen_1
    end
  end

  def self.down
    remove_attachment :users, :imagen_1
  end
end
