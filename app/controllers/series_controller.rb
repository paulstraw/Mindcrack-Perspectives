class SeriesController < ApplicationController
  def show
    @series = Series.find(params[:id])
    @episodes = @series.episodes
  end
end
