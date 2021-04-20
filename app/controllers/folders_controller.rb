class FoldersController < ApplicationController
    before_action :set_folder, only: [:show, :update, :destroy]


    # GET /folders
    def index
        
        @folders = Folder.all
        if @folders
            render json: {
                folders: @folders
            }
        else
            render json: {
                status: 500, 
                errors: ['no users found']
            }
        end

        # current_user.id == params[:user_id] ? json: {success: true} : json: {success: false}
        # return json: {success: true} unless current_user.id == params[:user_id]
        
    end

    # def show
    #     @user = User.find(params[:id])
    #    if @user
    #       render json: {
    #         user: @user
    #       }
    #     else
    #       render json: {
    #         status: 500,
    #         errors: ['user not found']
    #       }
    #     end
    # end

    # GET /folders/1
    def show
        
        @folder = Folder.find(params[:id])
           if @folder
              render json: {
                folder: @folder
              }
            else
              render json: {
                status: 500,
                errors: ['folder not found']
              }
            end
       

        # return json: {success: false} unless current_user.id == params[:user_id]
        # if @folder = Folder.find(params[:id])
        #     return json: @folder
        # else
        #     return json: {success: false}
        # end
    end

    # POST /folders
    def create
        @folder = Folder.new(folder_params)
        if @folder.save
          login!
          render json: {
            status: :created,
            folder: @folder
          }
        else 
          render json: {
            status: 500,
            errors: @folder.errors.full_messages
          }
        end


        # return json: {success: false} unless current_user.id == params[:user_id]
        # @folder = Folder.new(folder_params)

        # if @folder.save
        #     render json: @folder #, status: :created, location: @folder
        # else
        #      render json: @folder.errors #, status: :unprocessable_entity
        # end
    end

    # PATCH/PUT /folders/1
    def update
        # return json: {success: false} unless current_user.id == params[:user_id]
        # @folder = Folder.find(params[:id])
        # if @folder.update(folder_params)
        #     render json: @folder
        # else
        #     render json: @folder.errors #, status: :unprocessable_entity
        # end
    end

    # DELETE /folders/1
    def destroy
        # return json: {success: false} unless current_user.id == params[:user_id]
        # @folder = Folder.find(params[:id])
        # if @folder.destroy
        #     render json: {success: true}
        # else 
        #     render json: {success: false}
        # end
    end

    private

    # Only allow a list of trusted parameters through.
    def folder_params
        params.require(:folder).permit(:title, :color, :user_id)
    end
end