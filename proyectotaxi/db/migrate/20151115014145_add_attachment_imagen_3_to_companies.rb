class AddAttachmentImagen3ToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :imagen_3
    end
  end

  def self.down
    remove_attachment :companies, :imagen_3
  end
end
