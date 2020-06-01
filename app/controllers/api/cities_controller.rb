class Api::CitiesController < ApplicationController
    before_action :set_city, only: [:show, :update, :destroy]
    
    def index
        @cities = Api::City.all

        render json: @cities
    end
    
    def show
        render json: @city
    end
    
    private
    
    def set_city
        begin
            @city = Api::City.find(params[:id])
        rescue ActiveRecord::RecordNotFound => exception
            render json: { errors:  "Couldn't find city with id #{params[:id]}" }, status: :not_found
        end
    end
  
end
