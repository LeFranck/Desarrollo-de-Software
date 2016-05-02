class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :description
      t.string :video_link
      t.integer :completed
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end
