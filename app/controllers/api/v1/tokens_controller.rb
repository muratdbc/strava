require 'httparty'
module Api
  module V1
    class TokensController < ApplicationController
      respond_to :json
      def create
        @response=HTTParty.post("https://www.strava.com/oauth/token",:body=>{
          :client_id => 3744,
          :client_secret =>"8f4201a1795463efa7dc71b034cb2160a54459fd",
          :code=>params[:code]
          }.to_json,
          :headers => {'Content-Type'=>'application/json'})
        strava_id=@response.parsed_response["athlete"]["id"]
        @user=User.find_or_create_by(:strava_id=>strava_id)
        @user.token=@response.parsed_response["access_token"]
        @user.save
        respond_with @user do |format|
          format.json { render json: @user.to_json }
        end
      end
    end
  end
end
