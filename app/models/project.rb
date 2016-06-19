class Project < ActiveRecord::Base

  has_many :owners
  has_many :users, :through => :owners

  belongs_to :category

  has_many :stages

  has_many :project_tags
  has_many :tags, :through => :project_tags

  has_many :projectvotes
  has_many :users, :through => :projectvotes

  has_many :comments
  has_many :users, :through => :comments

  has_many :project_photos
  accepts_nested_attributes_for :project_photos , allow_destroy: true

  #Paperclip
  has_attached_file :avatar,
  styles: {thumb: ["128x128#", :jpg], original: ['500x500>', :jpg] },
  convert_options: { thumb: "-quality 75 -strip", original: "-quality 85 -strip" }

  ##Validaciones
  validates_attachment :avatar,
  :content_type => { :content_type => ["image/jpeg", "image/png", "image/gif"] },
  :size => { :in => 0..2.megabytes }

  validates :title, :description, :category_id, presence: true
end
