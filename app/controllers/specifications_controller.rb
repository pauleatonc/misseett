class SpecificationsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @specifications = Specifications.all
  end

  def show
  end

  def create
    @product = Product.find(params[:product_id])
    @project = Project.find(params[:project_id])

    @specification = Specification.new(product_id: @product.id, project_id: @project.id)
    if @specification.save!
      redirect_to project_products_path, notice: 'La orden ha sido ingresada'
    else
      redirect_to project_products_path, alert: 'la orden no ha podido ser ingresada'
    end
  end


  def destroy
    @project = Project.find(params[:project_id])
    @specification.destroy
    respond_to do |format|
      format.html { redirect_to @project, notice: 'La especificación fue eliminada' }
      format.json { head :no_content }
    end
  end
end
