class WelcomeController < ApplicationController
  def index
    if session[:price]
      @price = session[:price]
    else
      prices = [7, 11, 13, 17, 19, 23]
      @price = prices[rand(6-1).to_i]  
      session[:price] = @price
    end
  end
end
