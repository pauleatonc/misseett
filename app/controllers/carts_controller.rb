class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carts = Cart.all
  end

  def show
  end

  def create
    @product = Product.find(params[:product_id])
    @project = Project.last.id
    byebug
    @cart = Cart.create(product_id: @product, project_id: @project)
    if @cart.save
      redirect_to products_path, notice: 'La orden ha sido ingresada'
    else
      redirect_to products_path, alert: 'la orden no ha podido ser ingresada'
    end
  end
end
