class CreateProjectvotes < ActiveRecord::Migration
  def change
    create_table :projectvotes do |t|
      t.integer :rating
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
  end
end
