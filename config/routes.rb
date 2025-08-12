Rails.application.routes.draw do

#Play rock 
get("/rock", { :controller=>"zebra" , :action=>"giraffe"})

#Play paper
get("/paper", { :controller=>"zebra", :action=>"elephant"})

#Play scissors
get("/scissors", { :controller=>"zebra", :action=>"lion"})

#Play homepage
get("/", { :controller=>"zebra", :action=>"rules"})

end
