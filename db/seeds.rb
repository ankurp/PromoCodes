Promocode.create(code: "FIFTYNOTSTARTED", promotion: PercentOffPromo.new(value: 0.5, start_time: 1.hour.from_now))
Promocode.create(code: "FIFTY", promotion: PercentOffPromo.new(value: 0.5))
Promocode.create(code: "FIFTYEXPIRED", promotion: PercentOffPromo.new(value: 0.5, end_time: 1.hour.ago))
Promocode.create(code: "$10OFF", promotion: FixedPriceOffPromo.new(value: 10))
