class CouponsController < ActionController::Base

    def index
        @coupons = Coupon.all 
    end

    def create
        @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])

        @coupon.save

        redirect_to coupon_path(@coupon)
    end

    def new
        @coupon = Coupon.new
    end

    # def edit
    # end

    def show
        @coupon = Coupon.find(params[:id])
    end

    # def update
    # end

    # def destroy
    # end

end