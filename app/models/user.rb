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

  ##Validaciones
  validates :username, presence: true, uniqueness: true
end
