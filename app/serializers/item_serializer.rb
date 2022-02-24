class ItemSerializer < ActiveModel::Serializer
  attributes :name, :id, :event_id, :size, :quantity, :description, :user_id, :quantity_remaining

  def user_id
    object.event.user_id
  end
end