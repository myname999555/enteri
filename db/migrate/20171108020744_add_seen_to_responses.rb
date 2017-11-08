class AddSeenToResponses < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :seen, :boolean, default: false
  end
end
