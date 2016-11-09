class ShippingService::ShippingMethod

  attr_reader :id, :name, :cost

  def initialize(json_hash)
    @id   = json_hash["id"]
    @name = json_hash["name"]
    @cost = json_hash["cost"]
  end
end
