class AddDescriptionToProjectPhotos < ActiveRecord::Migration
  def change
    add_column :project_photos, :description, :string
  end
end
