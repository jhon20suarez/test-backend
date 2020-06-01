class Api::ClientsController < ApplicationController
  before_action :set_client, only: [:show, :update, :destroy]

  # GET /clients
  def index
    @clients = Api::Client.joins(:document_type, :gender, :city).all

    #render json: @clients
    render :index
  end

  # GET /clients/1
  def show
    #render json: @client
    render  :show
  end

  # POST /clients
  def create
    @client = Api::Client.new(client_params)
    
    if @client.invalid?
      render json: {errors: @client.errors.full_messages}, status: :unprocessable_entity
    else
      if @client.save
        # render json: @client, status: :created, location: @client
        render :show
      else
        render json: { errors: @client.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.invalid?
      render json: @client.errors, status: :unprocessable_entity
    else
      if @client.update(client_params)
        render json: @client
      else
        render json: @client.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
    render json: { message:  "Client removed" }, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      begin
        # @client = Api::Client.find(params[:id])
        @client = Api::Client.joins(:document_type, :gender,city: :department).find(params[:id])
      rescue ActiveRecord::RecordNotFound => exception
        render json: { errors:  "Couldn't find client with id #{params[:id]}" }, status: :not_found
      end
    end

    # Only allow a trusted parameter "white list" through.
    def client_params
      # params.require(:client).permit(:identification, :full_name, :birthdate, :document_type_id, :gender_id, :city_id, :avatar)
      params.permit(:identification, :full_name, :birthdate, :document_type_id, :gender_id, :city_id, :avatar)
    end
end
