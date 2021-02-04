class CouponsController < ApplicationController
  before_action :authenticate_user!

  def index
    @coupon = Coupon.new
  end

  def create
    randen = 10.times.map { rand(1..9) }.join.to_i 
    @coupon = Coupon.new(coupon_params)
    if @coupon.save
      redirect_to coupons_path, notice: "「已成功兌換，您的兌換券序號為#{randen}」"
    else
      render :index
    end

  end

  def show
  end

  private
  
  def coupon_params
    params.require(:coupon).permit(:name, :phone, :taiwanid)
  end
end
