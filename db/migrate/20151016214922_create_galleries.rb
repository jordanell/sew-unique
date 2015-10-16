class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title, null: false
      t.string :description
      t.boolean :public, default: true

      t.timestamps
    end
  end
end
