class Project < ActiveRecord::Base

  has_many :owners
  has_many :users, :through => :owners

  belongs_to :category

  has_many :stages
end
