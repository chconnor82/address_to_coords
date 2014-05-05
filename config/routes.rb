AddressToCoords::Application.routes.draw do
  get("/weather", { :controller => "addresses", :action => "fetch_coordinates" })
end
