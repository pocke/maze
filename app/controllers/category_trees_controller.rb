class CategoryTreesController < ApplicationController
  before_action :set_category_tree, only: [:show, :update, :destroy]

  # GET /category_trees
  def index
    @category_trees = CategoryTree.all

    render json: @category_trees
  end

  # GET /category_trees/1
  def show
    render json: @category_tree
  end

  # POST /category_trees
  def create
    @category_tree = CategoryTree.new(category_tree_params)

    if @category_tree.save
      render json: @category_tree, status: :created, location: @category_tree
    else
      render json: @category_tree.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_trees/1
  def update
    if @category_tree.update(category_tree_params)
      render json: @category_tree
    else
      render json: @category_tree.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_trees/1
  def destroy
    @category_tree.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_tree
      @category_tree = CategoryTree.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_tree_params
      params.fetch(:category_tree, {})
    end
end
