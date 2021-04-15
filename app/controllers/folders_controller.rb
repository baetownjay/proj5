class FoldersController < ApplicationController
    before_action :set_folder, only: [:show, :update, :destroy]

    # GET /folders
    def index
        return json: {success: true} unless current_user.id == params[:user_id]
        @folders = current_user.folders
    end

    # GET /folders/1
    def show
        return json: {success: false} unless current_user.id == params[:user_id]
        if @folder = Folder.find(params[:id])
            return jason: @folder
        else
            return json: {success: false}
        end
    end

    # POST /folders
    def create
        return json: {success: false} unless current_user.id == params[:user_id]
        @folder = Folder.new(folder_params)

        if @folder.save
            render json: @folder #, status: :created, location: @folder
        else
             render json: @folder.errors #, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /folders/1
    def update
        return json: {success: false} unless current_user.id == params[:user_id]
        @folder = Folder.find(params[:id])
        if @folder.update(folder_params)
            render json: @folder
        else
            render json: @folder.errors #, status: :unprocessable_entity
        end
    end

    # DELETE /folders/1
    def destroy
        return json: {success: false} unless current_user.id == params[:user_id]
        @folder = Folder.find(params[:id])
        if @folder.destroy
            render json: {success: true}
        else 
            render json: {success: false}
        end
    end

    private

    # Only allow a list of trusted parameters through.
    def folder_params
        params.require(:folder).permit(:title, :color, :user_id)
    end
end