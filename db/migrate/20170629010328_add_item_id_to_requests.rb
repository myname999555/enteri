class AddItemIdToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :item_id, :integer
  end
end
