class GamesController < ApplicationController

  def show

    @placeholder = 'placeholder'
    @arr =["one","two","three","four"]


    @current_user_id = 1

    @user = User.find(@current_user_id)
    @team = @user.team_id

    @game = Game.where(:team_id => @team).first || Game.where(:awayteam_id => @team).first

    @home_team = Team.find(@game.team_id)
    @away_team = Team.find(@game.awayteam_id)

    @home_team = @home_team.users

    # player.activities.where(created_at: @game.created_at)

    render :index
  end

end
