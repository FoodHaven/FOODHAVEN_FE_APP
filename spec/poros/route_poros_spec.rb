require 'rails_helper'

RSpec.describe Route, type: :poro do
  let(:route_data) do
    {
      agency_name: 'Agency Name',
      route_short_name: 'Route 123',
      headsign: 'Head Sign',
      start_time: '10:00 AM',
      end_time: '11:30 AM'
    }
  end

  it 'can be initialized with data' do
    route = Route.new(route_data)

    expect(route.agency_name).to eq('Agency Name')
    expect(route.route_short_name).to eq('Route 123')
    expect(route.headsign).to eq('Head Sign')
    expect(route.start_time).to eq('10:00 AM')
    expect(route.end_time).to eq('11:30 AM')
  end
end