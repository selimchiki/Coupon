class Coupons

    attr_reader :coupons
    
    def initialize
        @coupons = {}
    end

    def add(coupon)
        @coupons[coupon.code] = coupon.pourcent
    end

    def get(code)
        if @coupons.has_key?(code)
            return @coupons.has_key?(code)
        else
            return "Sorry, we don't found the Coupon"
        end
    end

    def apply(code, total)
        if self.get(code)
            coup = coupons[code]
            reduction = (100 * coup) / 100
            return total - reduction
        end
    end

end


class Coupon

    attr_accessor :code
    attr_accessor :pourcent

    def initialize(code, pourcent)
        @code = code 
        @pourcent = pourcent
    end

end