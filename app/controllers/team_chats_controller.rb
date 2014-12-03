class TeamChatsController < ApplicationController

  respond_to :json

  def create
    user = User.find(1)
    user = User.find(current_user.id)

    response_with user.team_chats.create(content: team_chats_params)
  end

  private

  def team_chats_params
    params.require(:team_chats).permit(:content)
  end
end
