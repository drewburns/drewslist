class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  	  t.string  :category
      t.string  :title
      t.text    :body
      t.string  :author
      t.integer :category_id

      t.timestamps
    end
  end
end