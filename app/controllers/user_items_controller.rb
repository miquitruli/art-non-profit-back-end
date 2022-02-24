class UserItemsController < ApplicationController
    def create
        event = Event.find(user_item_params[:event_id])

        params[:user_item][:items].each do |item|
            current_user.user_items.create(item_id: item[0], quantity: item[1])
        end
        render json: event
    end

    private

    def user_item_params
        params.require(:user_item).permit(:event_id, :items)
    end
end
