class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def require_is_admin
    if !current_user.is_admin?
      redirect_to "/admin/tasks/", alert: "你不是管理员."
    end
  end

end
