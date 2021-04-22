class ThoughtsController < ApplicationController
    before_action :set_thought, only: [:show, :update, :destroy]


    # GET /thoughts
    def index
        
        @thoughts = Thought.all
        if @thoughts
            render json: {
                thoughts: @thoughts
            }
        else
            render json: {
                status: 500, 
                errors: ['no users found']
            }
        end

       
        
    end


    # GET /thoughts/1
    def show
        
        @thought = Thought.find(params[:id])
           if @thought
              render json: {
                thought: @thought
              }
            else
              render json: {
                status: 500,
                errors: ['thought not found']
              }
            end
       


    end

    # POST /thoughts
    def create
        @thought = Thought.new(thought_params)
        if @thought.save
          
          render json: @thought
            
        else 
          render json: {
            status: 500,
            errors: @thought.errors.full_messages
          }
        end


      
    end

    # PATCH/PUT /thoughts/1
    def update
       
    end

    # DELETE /thoughts/1
    def destroy
       
    end

    private

    # Only allow a list of trusted parameters through.
    def thought_params
        params.require(:thought).permit(:image, :title, :description, :folder_id, :public)
    end
end
