require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates
    @address = params["address"]
      if @address != nil
    @url_safe_address = URI.encode(@address)
    else
    @url_safe_address = URI.encode("foster and sheridan")
    end
    # # Your code goes here.


url= "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}&sensor=false"
# require 'open["URI.encode(@address)"]'
raw_data = open(url).read
parsed_data = JSON.parse(raw_data)

@latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
@longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

end
end
