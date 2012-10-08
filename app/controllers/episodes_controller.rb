class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
    @series = @episode.series
    @perspectives = @episode.perspectives.order :user
  end
end