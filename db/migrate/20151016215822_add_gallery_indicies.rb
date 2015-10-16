class AddGalleryIndicies < ActiveRecord::Migration
  def change
    add_index :galleries, :title
    add_index :galleries, :public
  end
end
