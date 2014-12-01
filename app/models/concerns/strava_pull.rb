require 'active_support/concern'

module StravaPull
  extend ActiveSupport::Concern

  def get_user(token)

    @user_data = HTTParty.get("https://www.strava.com/api/v3/athlete", headers: {"Authorization" => "Bearer #{token}"})
    save_to_database(@user_data)
    return @user_data

  end

  def save_to_database(user_data)
    p user_data
    UserActivity.create()
  end
end
