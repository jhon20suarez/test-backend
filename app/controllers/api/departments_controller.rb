class Api::DepartmentsController < ApplicationController
    before_action :set_department, only: [:show, :update, :destroy]
    
    def index
        @departments = Api::Department.all
        
        render json: @departments
        #render :index
    end
      
    def show
        render json: @department
        #render :show
    end

    def show_cities
        @cities = Api::City.where(department_id: params[:id])
        
        render json: @cities
        #render :show_cities
    end
    
    private 
    
    def set_department
      begin
        @department = Api::Department.find(params[:id])
      rescue ActiveRecord::RecordNotFound => exception
        render json: { errors:  "Couldn't find department with id #{params[:id]}" }, status: :not_found
      end
    end
    
end
