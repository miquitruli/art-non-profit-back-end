class User < ApplicationRecord
    has_many :events
    has_many :user_items

    validates :name, :email, presence: true
    has_secure_password #uses bcrypt, store and authenticate password

    
end
