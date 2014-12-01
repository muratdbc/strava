class CreateGameInvites < ActiveRecord::Migration
  def change
    create_table     :game_invites do |t|
		t.references :team
		t.integer    :to_id
	    t.integer    :from_id
	    t.string     :message
	    t.boolean    :accepted
	    t.boolean    :declined
	    t.timestamps

    end
  end
end
