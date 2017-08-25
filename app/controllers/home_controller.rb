class HomeController < ApplicationController
    def welcome

    render("home/home.html.erb")
    # redirect_to("https://fortheboundless.com/")
    end
end