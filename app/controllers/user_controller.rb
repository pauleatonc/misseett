class UserController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @user_brand_id = @user.brand_id
    @user_brand = @user.brands.find(@user_brand_id)
  end
end
