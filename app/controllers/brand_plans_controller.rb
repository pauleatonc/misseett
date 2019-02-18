class BrandPlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @brand_plans = BrandPlan.all
    @user = User.all
  end

  def show
    @brand_plan = BrandPlan.find(params[:id])
  end

  def new
    @brand_plan = BrandPlan.new
  end

  def create
    @brand_plan = BrandPlan.new(brand_params)
    @brand_plan.save
  end

  private

  def brand_plan_params
    params.require(:project).permit(:name, :description, :price, :duration, :brands, :products)
  end
end
