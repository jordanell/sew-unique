class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :gallery_id, null: false
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
