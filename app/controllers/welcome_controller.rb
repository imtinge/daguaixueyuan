class WelcomeController < ApplicationController
  def index
    flash[:notice] = "welcome to daguaixueyuan"
  end

  def camp

  end
end
