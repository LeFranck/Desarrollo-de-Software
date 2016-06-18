class ProjectPhoto < ActiveRecord::Base
  belongs_to :project

  #Paperclip
  has_attached_file :photo,
  styles: {thumb: ["256x256#", :jpg], original: ['500x500>', :jpg] },
  convert_options: { thumb: "-quality 75 -strip", original: "-quality 85 -strip" }

  ##Validaciones
  validates_attachment :photo,
  :content_type => { :content_type => ["image/jpeg", "image/png", "image/gif"] },
  :size => { :in => 0..2.megabytes }
end
