class RemoveImageAddDescription < ActiveRecord::Migration[5.0]
  def change
    remove_column :responses, :image, :string
    add_column :responses, :description, :string
  end
end
