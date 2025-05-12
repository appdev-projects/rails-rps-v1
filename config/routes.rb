Rails.application.routes.draw do
  root "game#rules"

  get "/rock", to: "game#rock"
  get "/paper", to: "game#paper"
  get "/scissors", to: "game#scissors"
end
