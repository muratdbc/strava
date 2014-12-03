class TeamChatsController < ApplicationController

  respond_to :json

  def create
    user = User.find(1)

    chat = user.team_chats.create(team_chat_params)

    respond_to do |format|
      format.json{ render :json => chat.to_json(:include => :user) }
    end
  end

  private

  def team_chat_params
    params.require(:team_chat).permit(:content)
  end
end
