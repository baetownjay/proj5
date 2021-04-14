class SessionsController < ApplicationController

    def create 
        @user = User.find_by_username(user_params[:username])
        if @user.authenticate(user_params[:password])
            session[:user_id] = @user.id 
            render json: @user 
        else 
            render json: {error: 'invalid login attempt'}
        end
    end
    def logged_in 
        if @current_user
             render json: {
                 logged_in: true,
                 user: @current_user
             }
         else
             render json: {
                 logged_in: false
             }
        end
     end
 
     def logout
         reset_session
         render json: { status: 200, logged_out: true}
     end


    private

    def user_params
        params.require(:userDetails).permit(:username, :password)
    end
end
