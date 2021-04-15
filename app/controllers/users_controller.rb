class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def create
        
    end

    def show
        user = User.find_by(username: params[:username])
        avatar = rails_blobs_path(user.avatar)

        if user.password == params[:password]
            render json: {user: user, avatar: avatar}

        else 
            render json: { message: "THIS USER IS NOT AUTHENTICATED"}
        end
    end

    def update
    end

end
