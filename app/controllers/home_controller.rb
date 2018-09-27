class HomeController < ApplicationController

    def index
        @featured_items = Featured.all.includes(:product).order(:position)
    end

end
