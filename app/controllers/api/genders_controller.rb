class Api::GendersController < ApplicationController
    before_action :set_gender, only: [:show, :update, :destroy]
    
    def index
        @genders = Api::Gender.all
        
        render json: @genders
        #render :index
    end
      
    def show
        render json: @gender
        #render :show
    end
    
    private 
    
    def set_gender
      begin
        @gender = Api::Gender.find(params[:id])
      rescue ActiveRecord::RecordNotFound => exception
        render json: { errors:  "Couldn't find document type with id #{params[:id]}" }, status: :not_found
      end
    end
end
