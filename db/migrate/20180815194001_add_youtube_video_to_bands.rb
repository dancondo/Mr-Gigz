class AddYoutubeVideoToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :youtube_video, :string
  end
end
