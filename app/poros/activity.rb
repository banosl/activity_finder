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
end