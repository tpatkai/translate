class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :task
      t.text :translation

      t.timestamps
    end
  end
end
