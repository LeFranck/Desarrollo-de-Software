class AddAttachmentPhotoToProjectPhotos < ActiveRecord::Migration
  def self.up
    change_table :project_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :project_photos, :photo
  end
end
