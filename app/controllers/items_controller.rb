class ItemsController < ApplicationController
    skip_before_action :authorized
    
    def create
        item = Item.create(item_params)
        render json: item
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: item
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {}
    end


    private

    def item_params
        params.require(:item).permit(:name, :size, :quantity, :description, :event_id)
    end
end
