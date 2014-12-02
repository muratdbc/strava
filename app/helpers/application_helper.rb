module ApplicationHelper
  def total_distance(user)
    activities = user.activities.map { |activity| activity.distance }
    activities.reduce(:+)
  end

  def total_distance_team(user_array)
    totals = []
    user_array.each do |user|
      totals << total_distance(user)
    end
    totals.reduce(:+)
  end
end
