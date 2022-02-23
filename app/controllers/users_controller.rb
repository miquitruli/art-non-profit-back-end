class UsersController < ApplicationController
    skip_before_action :authorized #methods can be used before logged in
    
    def create
        user = User.new(user_params)
        if user.save
            token = encode_token({user_id: user.id})
            render json: {user: user, token: token}, status: :created
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
