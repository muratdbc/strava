class TeamsController < ApplicationController

  def index

    @teams = Team.all

    render :index
  end
end
