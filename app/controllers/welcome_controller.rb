class WelcomeController < ApplicationController
  def index
    flash[:notice] = "welcome to daguaixueyuan"
  end
end
