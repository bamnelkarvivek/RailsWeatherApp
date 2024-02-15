class WeatherController < ApplicationController
  def index
    api_key = 'your-api-key'
    api = WeatherApi.new(api_key)
    @weather = api.weather_by_city('New York')
  end
end