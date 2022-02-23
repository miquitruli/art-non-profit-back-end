class CurrentUserController < ApplicationController
    def index
        token = encode_token({user_id: current_user.id})
        render json: {user: current_user, token: token}
    end
end