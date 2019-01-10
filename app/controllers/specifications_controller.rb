class SpecificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @specifications = Specifications.all
  end

  def show
  end

  def create
    @product = Product.find(params[:product_id])
    @project = Project.last

    @specification = Specification.new(product_id: @product.id, project_id: @project.id)
    if @specification.save!
      redirect_to products_path, notice: 'La orden ha sido ingresada'
    else
      redirect_to products_path, alert: 'la orden no ha podido ser ingresada'
    end
  end
end
