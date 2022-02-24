class Item < ApplicationRecord
    has_many :user_items
    belongs_to :event

    validates :name, :quantity, presence: true

    def quantity_remaining
        quantity - user_items.sum(:quantity)
    end
end
