class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    users_show_url
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 97318bee18670a3fdd8a2ee5e38a980f6a593ce4
