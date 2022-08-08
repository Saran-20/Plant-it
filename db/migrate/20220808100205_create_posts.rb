class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :Title
      t.longtext :Content
      t.string :Image

      t.timestamps
    end
  end
end
