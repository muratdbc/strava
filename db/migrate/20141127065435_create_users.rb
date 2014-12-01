class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :strava_name
      t.string    :firstname
      t.string    :lastname
      t.string    :email
      t.string    :city
      t.string    :state
      t.string    :country
      t.string    :sex
      t.string    :measurement_preference
      t.string    :profile_img
      t.string    :token
      t.string    :refreshtoken
      t.integer   :strava_id
      t.references :team, index: true

      t.timestamps
    end
  end
end
