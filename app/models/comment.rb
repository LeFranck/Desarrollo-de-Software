class Comment < ActiveRecord::Base

  belongs_to :user
  belongs_to :project

  has_many :commentvotes
  has_many :users, :through => :commentvotes
end
