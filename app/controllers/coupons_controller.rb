class CouponsController < ApplicationController
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code] , store: params[:coupon][:store])
    redirect_to coupon_path(@coupon.id)
  end

def new
end

def index
  @coupons = Coupon.all
end

def show
  @coupon = Coupon.all.find(params[:id])
end



end
