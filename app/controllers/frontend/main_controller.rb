module Frontend
  class MainController < ApplicationController
    def index; end
    def products
     @products = Product.all
    end
  end
end
