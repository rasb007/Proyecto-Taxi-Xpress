class Service < ActiveRecord::Base
  has_attached_file :imagen_4, styles: { medium: "300x300>", thumb: "100x100>", big: "330x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imagen_4, content_type: /\Aimage\/.*\Z/
end
