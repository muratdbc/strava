class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :strava_name
      t.string :token
      t.string :refreshtoken
      t.references :team, index: true

      t.timestamps
    end
  end
end
