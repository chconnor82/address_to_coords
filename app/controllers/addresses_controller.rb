require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates
    @address = "the corner of Foster and Sheridan"
    @url_safe_address = URI.encode(@address)

    # # Your code goes here.


@url_safe_address = "http://maps.googleapis.com/maps/api/geocode/json?address=the+corner+of+foster+and+sheridan&sensor=false"
# require 'open["URI.encode(@address)"]'
raw_data = open(@url_safe_address).read
parsed_data = JSON.parse(raw_data)

@latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
@longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

 end
end
