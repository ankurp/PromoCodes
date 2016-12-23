class FixedPriceOffPromo < ApplicationRecord
  
  include Concerns::PromocodeValidity

  def price(price)
    check_validity!

    price - value
  end
end
