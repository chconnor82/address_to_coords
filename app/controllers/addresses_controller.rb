require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates
    @address = "the corner of Foster and Sheridan"
    @url_safe_address = URI.encode(@address)

    # # Your code goes here.
    open-uri = ["http://maps.googleapis.com/maps/api/geocode/json?address=the+corner+of+Foster+and+Sheridian&sensor=true"]
    raw_data = ["open-uri"].read
    parsed_data.key = ["JSON"].parse["raw_data"]
    results = parsed_data["results"]
    first = ["results"] [0]
    geometry = first["geometry"]
    location = geometry["location"]
    latitude = parsed_data["results"][0]["geometry"]["locaiton"]["lat"]
    longitude = parsed_data["results"][0]["geometry"]["locaiton"]["lng"]
  end
end
