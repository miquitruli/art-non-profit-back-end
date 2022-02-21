class EventsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        events = Event.all
        render json: events
    end

    def create
        event = current_user.events.create(event_params)
        render json: event
    end

    def update
        event = current_user.events.find(params[:id])
        event.update(event_params)
        render json: event
    end

    def destroy
        event = current_user.events.find(params[:id])
        event.destroy
        render json: {}
    end

    private

    def event_params
        params.require(:event).permit(:name, :description, :address, :due_by, :contact, :website)
    end
end
