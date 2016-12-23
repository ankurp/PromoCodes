class FixedPriceOffPromo < ApplicationRecord
  def price(price)
    raise PromocodeNotStarted if start_time.present? && start_time > Time.now
    raise PromocodeExpired if end_time.present? && end_time < Time.now

    price - value
  end
end
