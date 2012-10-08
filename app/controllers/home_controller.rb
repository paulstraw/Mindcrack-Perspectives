class HomeController < ApplicationController
  def index
    @series = Series.all
  end
end
