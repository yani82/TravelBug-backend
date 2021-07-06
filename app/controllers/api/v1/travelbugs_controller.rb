class Api::V1::TravelbugsController < ApplicationController
    def index 
        travelbugs = Travelbug.all 
        options = {
        include: [:country] 
        }
        # render json: travelbugs? 
        render json: TravelbugSerializer.new(travelbugs, options)
    end 

    def show 
        travelbug = Travelbug.find(params[:id])

        render json: travelbug
    end 

    def create 
        travelbug = Travelbug.create(travelbug_params)
        if travelbug.save

            render json: travelbug, status: :accepted
        else 
        # here is where we would render a json error object 
            render json: {errors: @travelbug.errors.full_messages}, status: :unprocessible_entity 
        end
    end 

    def update 
        travelbug = Travelbug.find(params[:id])
        travelbug.update(travelbug_params)

        render json: travelbug
    end 

    def destroy
        travelbug = Travelbug.find(params[:id])
        travelbug.delete 

        render json: {travelbugId: travelbug.id}
    end 

    private 

        def travelbug_params 
            params.require(:travelbug).permit(:body, :country_id)
        end 
end
