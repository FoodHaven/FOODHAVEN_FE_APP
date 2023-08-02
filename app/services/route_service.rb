class RouteService
  def conn
    Faraday.new(url: "https://foodhaven-be.onrender.com")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def all_routes(id, original_lat, original_lon, destination_lat, destination_lon)
    get_url("/api/v1/markets/#{id}/transit_routes?original_lat=#{original_lat}&original_lon=#{original_lon}&destination_lat=#{destination_lat}&destination_lon=#{destination_lon}")
  end

  def one_route(id)
    get_url("/api/v1/route_details?global_route_id=#{id}")
  end
end