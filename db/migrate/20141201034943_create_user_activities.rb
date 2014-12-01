class CreateUserActivities < ActiveRecord::Migration
  def change
    create_table 	  :user_activities do |t|
    	t.references  :user
		t.references  :game
    	t.string      :map_polyline
		t.integer  	  :distance
		t.datetime    :run_rate

      	t.timestamps
    end
  end
end
