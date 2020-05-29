class Quest < ApplicationRecord
  validates  :name, :price, :user_id, presence: true
  belongs_to :user
end
