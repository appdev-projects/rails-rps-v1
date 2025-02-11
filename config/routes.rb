Rails.application.routes.draw do
get("/rock", {:controller=>"zebra" :action=>"giraffe"})
end
