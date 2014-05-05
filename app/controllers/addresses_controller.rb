require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates
    @address = params["address"]
      if (@address) > .nil
      (@address)
    else
      "Other:" ["Please_fill_out_form"]
    end
    # # Your code goes here.
 @url_safe_address = URI.encode(@address)

url= "http://maps.googleapis.com/maps/api/geocode/json?address=the+corner+of+foster+and+sheridan&sensor=false"
# require 'open["URI.encode(@address)"]'
raw_data = open(url).read
parsed_data = JSON.parse(raw_data)

@latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
@longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

 end
