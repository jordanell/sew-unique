class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :text, null: false

      t.timestamps
    end
  end
end
