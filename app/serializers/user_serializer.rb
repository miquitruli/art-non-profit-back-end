class UserSerializer < ActiveModel::Serializer
    attributes :name, :email, :id
    
    has_many :user_items
    
    
end
  
  
  