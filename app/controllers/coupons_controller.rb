class CouponsController < ApplicationController
  before_action :authenticate_user!

  def index
    @coupon = Coupon.new
  end

  def create
    randen = 10.times.map { rand(1..9) }.join.to_i 

  end

  def show
  end

  private
  
  def coupon_params
    params.require(:coupon).permit(:name, :phone, :taiwanid)
  end
end
