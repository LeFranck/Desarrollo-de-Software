class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include PgSearch

  has_many :owners
  has_many :projects, :through => :owners

  has_many :projectvotes
  has_many :projects, :through => :projectvotes

  has_many :comments
  has_many :projects, :through => :comments

  has_many :commentvotes
  has_many :comments, :through => :commentvotes

  #Paperclip
  has_attached_file :avatar,
  styles: {thumb: ["64x64#", :jpg], original: ['500x500>', :jpg] },
  convert_options: { thumb: "-quality 75 -strip", original: "-quality 85 -strip" }

  ##Validaciones
  validates_attachment :avatar,
  :content_type => { :content_type => ["image/jpeg", "image/png", "image/gif"] },
  :size => { :in => 0..2.megabytes }

  validates :username, presence: true, uniqueness: true

#<<<<<<< HEAD
  pg_search_scope :search, :against => {
    :username => 'A',
    :email => 'A',
    :firstname => 'B',
    :lastname => 'B'
  }, :ignoring => :accents,
  :using => {
    :tsearch => {:any_word => true},
    :trigram => {
      :threshold => 0.1
    }
  }
#=======
#>>>>>>> origin/paperclip
end
