class Project < ActiveRecord::Base

  include PgSearch

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

  pg_search_scope :tag_search, :associated_against => {
    :tags => :name
  }, :ignoring => :accents

  pg_search_scope :search, :against => {
    :title => 'A',
    :description => 'B'
  }, :ignoring => :accents
end
