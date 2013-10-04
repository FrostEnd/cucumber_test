class MainController < ApplicationController

  def index
    if user_signed_in?
      if current_user.sign_in_count == 1
        redirect_to edit_user_registration_path
      end
    else
      redirect_to new_user_session_path
    end
  end
end
