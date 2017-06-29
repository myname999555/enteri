class Request < ApplicationRecord

  validates :description, :is_public, :user_id, :item_id, presence: true

end
