class HomeController < ApplicationController
    def index
        @devs = {name: "Alefy", dev: "Ruby on Rails"},
        {name: "Joaquim", dev: "Rails"},
        {name: "Joana", dev: "Ruby"}
    end
end
