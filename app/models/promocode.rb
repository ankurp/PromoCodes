class Promocode < ApplicationRecord
  belongs_to :promotion, polymorphic: true

  self.primary_key = "code"

  delegate :price, :to => :promotion

end
