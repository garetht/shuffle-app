class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title

  has_many :user_uploadeds
  has_many :uploading_users, through: :user_uploadeds, source: :user
  
  has_many :user_histories
  has_many :listeners, through: :user_histories, source: :user

  def self.get_random
    @already_uploaded_songs = UserUploaded.select("song_id").where("user_id = ?", 1)
    @already_listened_songs = UserHistory.select("song_id").where("user_id = ?", 1)
    @merged_arrays = @already_uploaded_songs + @already_listened_songs
    if @merged_arrays.empty?
      Song.find((rand * Song.count).floor + 1)
    else
      @random_songs = Song.where("id NOT IN (?)", @merged_arrays)
      @random_id = (rand * (@random_songs.length)).floor + 1
      @random_songs[@random_id].title
    end
  end

end