class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.notpayed
    @total = @orders.get_total
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @Order = Order.new
  end

  def create
    @orders = Order.notpayed
    @orders.destroy_all
    @user = current_user.id
    @brand_plan = BrandPlan.find(params[:brand_plan_id])
    @price = @brand_plan.price
    @order = Order.new( user_id: @user, brand_plan_id: @brand_plan.id, price: @price)
    if @order.save!
      redirect_to orders_path, notice: 'Confirmar Pago de Suscripción'
    else
      redirect_to brand_plans_path, alert: 'la orden no ha podido ser ingresada'
    end
  end

  def order_status
    @order = Order.find(params[:id])
    respond_to do |format|
      if @order.update(payed: false)
        current_user.remove_role(:brand_manager)
        current_user.add_role(:regular_user)
        format.html { redirect_to brand_plans_path, notice: 'Suscripción Cancelada' }
      else
        format.html { render :edit }
        format.json { render json: @orders.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to @order, notice: 'La Orden fue eliminada' }
      format.json { head :no_content }
    end
  end
end
