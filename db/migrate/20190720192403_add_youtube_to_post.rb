class AddYoutubeToPost < ActiveRecord::Migration[5.2]
  def change
    change_table :posts do |t|
      t.string :yt_video_id
    end
  end
end
