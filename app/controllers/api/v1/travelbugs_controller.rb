class Api::V1::TravelbugsController < ApplicationController
    def index 
        @travelbugs = Travelbug.all 

        render json: @travelbugs, status: 200 
    end 

    def show 
        @travelbug = Travelbug.find(params[:id])

        render json: @travelbug, status: 200 
    end 

    def create 
        @travelbug = Travelbug.create(travelbug_params)

        render json: @travelbug, status: 200
    end 

    def update 
        @travelbug = Travelbug.find(params[:id])
        @travelbug.update(travelbug_params)

        render json: @travelbug, status: 200
    end 

    def destroy
        @travelbug = Travelbug.find(params[:id])
        @travelbug.delete 

        render json: {travelbugId: @travelbug.id}
    end 

    private 
        def travelbug_params 
            params.require(:travelbug).permit(:body)
        end 
end
