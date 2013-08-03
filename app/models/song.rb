class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title

  has_many :user_uploadeds
  has_many :uploading_users, through: :user_uploadeds, source: :user
  
  has_many :user_histories
  has_many :listeners, through: :user_histories, source: :user
end
