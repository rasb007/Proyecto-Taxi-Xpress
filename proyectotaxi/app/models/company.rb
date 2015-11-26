class Company < ActiveRecord::Base
  has_attached_file :imagen_3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imagen_3, content_type: /\Aimage\/.*\Z/
end
