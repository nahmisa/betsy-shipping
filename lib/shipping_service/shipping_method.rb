class ShippingService::ShippingMethod

  attr_reader :id, :name, :cost

  def initialize(id, name, cost)
    @id = id
    @name = name
    @cost = cost
  end

  # def initialize(json_hash)
  #   @id   = json_hash["id"]
  #   @name = json_hash["name"]
  #   @cost = json_hash["cost"]
  # end
end
