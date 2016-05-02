class Project < ActiveRecord::Base

  has_many :owners
  has_many :users, :through => :owners

end
