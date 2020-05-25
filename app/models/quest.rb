class Quest < ApplicationRecord
  validates :name, :description, :price, :user_id, presence: true
  belongs_to :user
end
