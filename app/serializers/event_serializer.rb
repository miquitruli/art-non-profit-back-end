class EventSerializer < ActiveModel::Serializer
  attributes :name, :description, :address, :formatted_due_by, :contact, :website, :id

  def formatted_due_by
    object.due_by.strftime("%m-%d-%Y")
  end
end


