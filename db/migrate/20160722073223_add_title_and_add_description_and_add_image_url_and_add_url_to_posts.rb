class AddTitleAndAddDescriptionAndAddImageUrlAndAddUrlToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :title, :string, null: false
    add_column :posts, :description, :text, null: false
    add_column :posts, :image_url, :string
    add_column :posts, :url, :string, null: false
    remove_column :posts, :value
  end
end
