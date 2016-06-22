class CreateProjectPhotos < ActiveRecord::Migration
  def change
    create_table :project_photos do |t|
      t.integer :number
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
