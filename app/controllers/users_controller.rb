class UsersController < ApplicationController
  def show
    @song = Song.get_random
    @user = current_user
  end
end
