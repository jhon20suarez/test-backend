class Api::CountriesController < ApplicationController
    before_action :set_country, only: [:show, :update, :destroy]
    
    def index
        @countries = Api::Country.all
        
        render json: @countries
        #render :index
    end
      
    def show
        render json: @country
        #render :show
    end

    def show_departments
        @departments = Api::Department.where(country_id: params[:id])
        
        render json: @departments
    end
    
    private
    
    def set_country
      begin
        @country = Api::Country.find(params[:id])
      rescue ActiveRecord::RecordNotFound => exception
        render json: { errors:  "Couldn't find country with id #{params[:id]}" }, status: :not_found
      end
    end
end
