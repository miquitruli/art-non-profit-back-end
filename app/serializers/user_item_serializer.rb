class UserItemSerializer < ActiveModel::Serializer
    attributes :quantity, :item, :item_name, :event_due_by, :event_name
    
    belongs_to :item
  
    def item_name
        object.item.name
    end 
    
    def event_due_by
        object.item.event.due_by&.strftime("%m-%d-%Y")
    end

    def event_name
        object.item.event.name
    end
end


#1-sweater due by: jsdjbfskd