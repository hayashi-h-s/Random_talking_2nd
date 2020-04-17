class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    end

  private

    # def logged_in_user
    #   unless user_signed_in?
    #     flash[:danger] = "ログインしてください。"
    #     redirect_to new_user_session_path
    #   end
    # end

    # def current_user?
    #   unless authenticate_user!
    #     flash[:danger] = "ログインしてください。"
    #     redirect_to new_user_session_path
    #   end
    # end

    def correct_user
      # @folder = Folder.find(params[:folder_id]) || Folder.find(params[:id])
      if  (params[:folder_id])
        @folder = Folder.find(params[:folder_id])
      else
        @folder = Folder.find(params[:id])
      end
      # @folder = Folder.find(params[:id])
      unless current_user == @folder.user
        flash[:danger] = "ユーザー本人のみが、行える操作です。"      
        redirect_to folders_path
      end
    end

    # before_action ：authenticate_user！
    
    def logged_in_user
      unless user_signed_in?
        flash[:danger] = "ログインしてください。"
        redirect_to new_user_session_path
      end
    end

    def not_logged_in_user
      if user_signed_in?
        redirect_to folders_path
      end
    end    


    # def current_user?
    #   if current_user.blank?
    #     flash[:danger] = "ログインしてください。"
    #     redirect_to new_user_session_path
    #   end    
    # end

end
