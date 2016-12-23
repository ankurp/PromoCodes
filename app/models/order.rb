class Order < ApplicationRecord
  has_and_belongs_to_many :items

  def promocode=(code)
    @promocode = Promocode.find(code) rescue NullPromo.new
  end

  def promocode
    @promocode
  end

  def price
    @promocode.price(super || items.map(&:price).inject(:+))
  end
end
