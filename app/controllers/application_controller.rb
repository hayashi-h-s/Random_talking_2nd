class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

  private

    # def logged_in_user
    #   unless user_signed_in?
    #     flash[:danger] = "ログインしてください。"
    #     redirect_to new_user_session_path
    #   end
    # end

    # def current_user?
    #   if current_user.blank?
    #     flash[:danger] = "ログインしてください。"
    #     redirect_to new_user_session_path
    #   end    
    # end

end
