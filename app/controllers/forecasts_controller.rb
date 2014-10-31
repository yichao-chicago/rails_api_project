require 'open-uri'
require 'json'

class ForecastsController < ApplicationController
  def location
    @address = params[:address]
    @url_for_geocoding = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @address
    @parsed_data = JSON.parse(open(@url_for_geocoding).read)
    @the_latitude = @parsed_data["results"][0]["geometry"]["location"]["lat"]
    @the_longitude = @parsed_data["results"][0]["geometry"]["location"]["lng"]
    @url_for_forecastAPI = "https://api.forecast.io/forecast/353acb2f354f8e32c73768faf808d6c0/#{@the_latitude},#{@the_longitude}"
    @parsed_data2 = JSON.parse(open(@url_for_forecastAPI).read)
    @the_temperature = @parsed_data2["currently"]["temperature"]
    @the_hour_outlook = @parsed_data2["hourly"]["data"][0]["summary"]
    @the_day_outlook = @parsed_data2["daily"]["data"][0]["summary"]
  end
end
