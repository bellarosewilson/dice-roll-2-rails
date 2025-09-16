Rails.application.routes.draw do
  root "dice#index"
  
  get "/dice/2/6", to: "dice#two_six"
  get "/dice/2/10", to: "dice#two_ten"
  get "/dice/1/20", to: "dice#one_twenty"
  get "/dice/5/4", to: "dice#five_four"
  
  # Dynamic route for any number of dice and sides
  get "/dice/:number_of_dice/:how_many_sides", to: "dice#roll"
end
