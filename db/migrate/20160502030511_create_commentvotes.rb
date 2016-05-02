class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.integer :type
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true

      t.timestamps null: false
    end
  end
end
