class ItemSerializer < ActiveModel::Serializer
  attributes :name, :id, :event_id, :size, :quantity, :description, :user_id, :quantity_remaining, :event
  belongs_to :event

  def user_id
    object.event.user_id
  end

  def event_due_date
    object.event.due_by&.strftime("%m-%d-%Y")
  end
end