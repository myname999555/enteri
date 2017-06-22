class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :user_id
      t.boolean :is_public

      t.timestamps
    end
  end
end
