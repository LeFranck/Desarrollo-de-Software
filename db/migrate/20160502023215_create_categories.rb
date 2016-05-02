class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps null: false
    end
    change_table :projects do |t|
      t.belongs_to :category
    end
  end
end
