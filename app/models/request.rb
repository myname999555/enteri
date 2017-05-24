class Request < ApplicationRecord

  validates :item_name, :description, :is_public, :user_id, presence: true

end
