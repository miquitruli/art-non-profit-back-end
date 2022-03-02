class UserItemSerializer < ActiveModel::Serializer
    attributes :quantity, :item, :item_name, :event_due_by, :event_name, :event_address
    
    belongs_to :item
  
    def item_name
        object.item.name
    end 
    
    def event_due_by
        if object.item.event.due_by >= Time.current.beginning_of_day
            object.item.event.due_by&.strftime("%m-%d-%Y")
        end
    end

    def event_name
        object.item.event.name
    end

    def event_address
        object.item.event.address
    end
end


#1-sweater due by: jsdjbfskd