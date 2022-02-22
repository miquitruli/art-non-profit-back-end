class Item < ApplicationRecord
    has_many :user_items
    belongs_to :event

    validates :name, :quantity, presence: true
end
