class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.integer :request_id
      t.integer :item_id
      t.boolean :accept
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
