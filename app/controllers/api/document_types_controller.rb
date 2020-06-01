class Api::DocumentTypesController < ApplicationController
    before_action :set_document_type, only: [:show, :update, :destroy]
    
    def index
        @document_types = Api::DocumentType.all
        
        render json: @document_types
        #render :index
    end
      
    def show
        render json: @document_type
        #render :show
    end
    
    private 
    
    def set_document_type
      begin
        @document_type = Api::DocumentType.find(params[:id])
      rescue ActiveRecord::RecordNotFound => exception
        render json: { errors:  "Couldn't find document type with id #{params[:id]}" }, status: :not_found
      end
    end
end
