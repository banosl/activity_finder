class Activity
  attr_reader :name,
              :type,
              :price,
              :participants
  def initialize(data)
    @name = data[:activity]
    @type = data[:type]
    @price = data[:price]
    @participants = data[:participants]
  end

  def priciness
    if price >= 0 && price <= 0.33
      "$"
    elsif price >= 0.34 && price <= 0.67
      "$$"
    elsif price >= 0.68 && price <= 1
      "$$$"
    end
  end
end