class CreateStreamFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :stream_followers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :streamer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
