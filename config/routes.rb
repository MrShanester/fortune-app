Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "fortune"
  get "/lottery", controller: "my_examples", action: "lottery"
  get "/beer", controller: "my_examples", action: "beer"
end
