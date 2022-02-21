class Event < ApplicationRecord
    belongs_to :user
    has_many :items
    has_many :users, through: :items, source: :user_items

    validates :name, :description, :address, :due_by, :contact, presence: true
end
