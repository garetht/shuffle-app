class UsersController < ApplicationController
  def show
    @song = Song.get_random(current_user.id)
    @user = current_user
  end
end
