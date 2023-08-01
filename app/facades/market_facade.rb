class MarketFacade
  attr_reader :id, :market_id
  def initialize(params)
    @latitude = params[:latitude]
    @longitude = params[:longitude]
    @radius = params[:radius]
    @id = params[:id].to_i || params[:market_id].to_i
  end
  
  def all_markets
    service.all_markets(@latitude, @longitude, @radius)[:data].map do |data|
      Market.new(data)
    end
  end

  def market
    Market.new(service.one_market(@id)[:data])
  end

  def service
    MarketService.new
  end

end