class WeatherController < ApplicationController
  def index
    begin
      api_key = 'your-api-key'
      api = WeatherApi.new(api_key)
      @weather = api.weather_by_city('New York')
    rescue StandardError => e
      # Handle the error, e.g., log it, display a friendly error message
      flash[:error] = "Error fetching weather data: #{e.message}"
      redirect_to root_path
    end
  end
end