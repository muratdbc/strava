class CreateGameInvites < ActiveRecord::Migration
  def change
    create_table     :game_invites do |t|
		t.references :team
		t.integer    :to_id
	    t.integer    :from_id
	    t.timestamps

    end
  end
end
