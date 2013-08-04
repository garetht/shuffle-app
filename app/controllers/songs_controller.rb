class SongsController < ApplicationController
  def show
    @song = Song.get_random(current_user)
    respond_to do |format|
      format.json {render :json => @song}
    end
  end
end
