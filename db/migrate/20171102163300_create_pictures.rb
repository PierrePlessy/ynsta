class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.timestamps
      t.integer :id_user
      t.integer :id_category
    end

    create_table :favoris do |t|
      t.timestamps
      t.integer :id_user
      t.integer :id_picture
    end

    create_table :tag_pictures do |t|
      t.timestamps
      t.integer :id_picture
      t.integer :id_tag
    end
  end
end
