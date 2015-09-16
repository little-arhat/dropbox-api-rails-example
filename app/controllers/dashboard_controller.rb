class DashboardController < ApplicationController

  def show
    @songs = Song.all
  end

end
