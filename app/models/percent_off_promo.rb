class PercentOffPromo < ApplicationRecord

  include Concerns::PromocodeValidity

  def price(price)
    check_validity!

    price - (price * value)
  end
end
