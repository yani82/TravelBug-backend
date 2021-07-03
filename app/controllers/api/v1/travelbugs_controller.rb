class Api::V1::TravelbugsController < ApplicationController
    def index 
        travelbugs = Travelbug.all 

        render json: travelbugs
    end 

    def show 
        travelbug = Travelbug.find(params[:id])

        render json: travelbug
    end 

    def create 
        travelbug = Travelbug.create(travelbug_params)
        # if travelbug.save
        binding.pry

        render json: travelbug
        # else 
        # here is where we would render a json error object 
        # end
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
            params.require(:travelbug).permit(:body)
        end 
end
