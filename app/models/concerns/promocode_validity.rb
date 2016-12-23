module Concerns
  module PromocodeValidity
    extend ActiveSupport::Concern

    def check_validity!
      raise PromocodeNotStarted if start_time.present? && start_time > Time.now
      raise PromocodeExpired if end_time.present? && end_time < Time.now
    end

  end
end
