class ChangeId < ActiveRecord::Migration[5.1]
  def change
    remove_column :favoris, :id_user
    remove_column :favoris, :id_picture
    remove_column :pictures, :id_user
    remove_column :pictures, :id_category
    remove_column :tag_pictures, :id_tag
    remove_column :tag_pictures, :id_picture

    add_column :favoris, :user_id, :integer
    add_column :favoris, :picture_id, :integer
    add_column :pictures, :user_id, :integer
    add_column :pictures, :category_id, :integer
    add_column :tag_pictures, :tag_id, :integer
    add_column :tag_pictures, :picture_id, :integer
  end
end
