class CouponsController < ApplicationController
  before_action :authenticate_user!

  def index
    @coupon = Coupon.new
  end

  def create
    randen = 10.times.map { rand(0..9) }.join.to_i 
    @coupon = Coupon.find_or_initialize_by(taiwanid: coupon_params[:taiwanid]) do |coupon|
      coupon.name = coupon_params[:name]
      coupon.phone = coupon_params[:phone]
    end
    if @coupon.new_record?
      @coupon.save 
      redirect_to coupons_path, notice: "「已成功兌換，您的兌換券序號為#{randen}」"
    elsif 
      redirect_to coupons_path, notice: "你已經在#{@coupon.created_at.strftime('%y年%m月%d日')}換過囉"
    else
      render :index 
    end

  end

  def show
  end

  private
  
  def coupon_params
    params[:coupon]
  end
end
