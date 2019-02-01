class LandingController < ApplicationController
  def index
    @brand = Brand.all
    @product = Product.all
    @user = current_user
  end
end
