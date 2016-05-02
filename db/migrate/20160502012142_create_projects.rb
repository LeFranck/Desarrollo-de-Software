class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :description
      t.string :video_link

      t.timestamps null: false
    end
  end
end
