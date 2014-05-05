AddressToCoords::Application.routes.draw do
  get("/weather", { :controller => "addresses", :action => "fetch_coordinates" })

  get("/weather/:address", { :controller => "addresses", :action => "fetch_coordinates" })


end
