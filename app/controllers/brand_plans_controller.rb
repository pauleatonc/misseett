class BrandPlansController < ApplicationController
  def index
    @brand_plans = BrandPlan.all
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
end
