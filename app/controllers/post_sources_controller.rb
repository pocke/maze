class PostSourcesController < ApplicationController
  before_action :set_post_source, only: [:show, :update, :destroy]

  # GET /post_sources
  def index
    @post_sources = PostSource.all

    render json: @post_sources
  end

  # GET /post_sources/1
  def show
    render json: @post_source
  end

  # POST /post_sources
  def create
    @post_source = PostSource.new(post_source_params)

    if @post_source.save
      render json: @post_source, status: :created, location: @post_source
    else
      render json: @post_source.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_sources/1
  def update
    if @post_source.update(post_source_params)
      render json: @post_source
    else
      render json: @post_source.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_sources/1
  def destroy
    @post_source.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_source
      @post_source = PostSource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_source_params
      params.require(:post_source).permit(:name, :secret)
    end
end
