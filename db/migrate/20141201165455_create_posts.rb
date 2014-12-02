class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :category
      t.string :title
      t.text :body
      t.string :edit_url
      t.string :author
    end
  end
end
