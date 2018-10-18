require_relative "../coupons"

RSpec.describe "Coupon" do
    
    it "create an instance of Coupon " do
        coupon = Coupon.new("SUMMER", 15)
        expect(coupon).to be_an_instance_of(Coupon)  
    end

    it "render an empty hash of coupons" do
        coupons = Coupons.new()
        expect(coupons.coupons).to eq({})
    end

    it "add coupons in Coupons" do
        coupon = Coupon.new("SUMMER", 15)
        coupons = Coupons.new()
        coupons.add(coupon)
        expect(coupons.coupons).to eq({"SUMMER" => 15})
    end

    it "verify if an coupons exist" do
        coupon = Coupon.new("SUMMER", 15)
        coupons = Coupons.new()
        coupons.add(coupon)
        expect(coupons.get("SUMMER")).to eq(true)
    end

    it "execute the reduction with pourcentage of coupon" do
        coupon = Coupon.new("SUMMER", 15)
        coupons = Coupons.new()
        coupons.add(coupon)

        total = 100
        code = "SUMMER"
        total_reduction = coupons.apply(code, total)
        expect(total_reduction).to eq(85)
    end

end
