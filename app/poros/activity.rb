class Activity
  attr_reader :name,
              :type,
              :price
  def initialize(data)
    @name = data[:activity]
    @type = data[:type]
    @price = data[:price]
  end
end