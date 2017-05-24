class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :item_name
      t.string :description
      t.boolean :is_public, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
