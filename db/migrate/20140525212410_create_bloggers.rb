class CreateBloggers < ActiveRecord::Migration
  def change
    create_table :bloggers do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
