class ThoughtsController < ApplicationController

    # POST /thoughts
    def create
        render json: {success: false} unless current_user.id == params[:user_id]
        @thoughts = Thoughts.new(thoughts_params)

        if thoughts.save
            render json: @thoughts #, status: :created, location: @thoughts
        else
                render json: @thoughts.errors #, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /thoughtss/1
    def update
        render json: {success: false} unless current_user.id == params[:user_id]
        @thoughts = Thoughts.find(params[:id])
        if @thoughts.update(thoughts_params)
            render json: @thoughts
        else
            render json: @thoughts.errors #, status: :unprocessable_entity
        end
    end

    # DELETE /thoughtss/1
    def destroy
        render json: {success: false} unless current_user.id == params[:user_id]
        @thoughts = Thoughts.find(params[:id])
        if @thoughts.destroy
            render json: {success: true}
        else 
            render json: {success: false}
        end
    end

    private

    # Only allow a list of trusted parameters through.
    def thoughts_params
        params.require(:thoughts).permit(:title, :description, :image, :folder_id)
    end
end
