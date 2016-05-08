class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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
  styles: {thumb: ["64x64#", :jpg]}

  validates_attachment :avatar,
  :content_type => { :content_type => ["image/jpg", "image/png"] },
  :size => { :in => 0..2.megabytes }
end
