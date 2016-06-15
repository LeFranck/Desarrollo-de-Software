class Projectvote < ActiveRecord::Base

  belongs_to :user
  belongs_to :project

  ##Validaciones
  validates :rating, numericality: { only_integer: true}
end
