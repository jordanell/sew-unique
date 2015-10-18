class ChangeGalleriesPublicToVisible < ActiveRecord::Migration
  def change
    rename_column :galleries, :public, :visible
  end
end
