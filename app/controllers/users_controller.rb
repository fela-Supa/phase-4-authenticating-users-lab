class UsersController < ApplicationController
    def show
        user = User.find(session[:user_id])
        if user
            render json: user, status: :found
        else 
            render json: {error: "User not found"}, status: :unauthorized
        end
    end
end
