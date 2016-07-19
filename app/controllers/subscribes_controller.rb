class SubscribesController < ApplicationController
  before_action :set_subscribe, only: [:show, :update, :destroy]

  # GET /subscribes
  def index
    @subscribes = Subscribe.all

    render json: @subscribes
  end

  # GET /subscribes/1
  def show
    render json: @subscribe
  end

  # POST /subscribes
  def create
    @subscribe = Subscribe.new(subscribe_params)

    if @subscribe.save
      render json: @subscribe, status: :created, location: @subscribe
    else
      render json: @subscribe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subscribes/1
  def update
    if @subscribe.update(subscribe_params)
      render json: @subscribe
    else
      render json: @subscribe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subscribes/1
  def destroy
    @subscribe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscribe
      @subscribe = Subscribe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subscribe_params
      params.fetch(:subscribe, {})
    end
end
