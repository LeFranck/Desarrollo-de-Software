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

  ##Validaciones
  validates :title, :description, :category_id, presence: true

  def self.search(search)
    if search
      where(['LOWER(title) LIKE LOWER(?)', "%#{search}%"])
    else
      find(:all)
    end
  end
end
