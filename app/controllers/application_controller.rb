class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    # unlessはifの反対。falseの時に処理を実行する
    unless logged_in?
      redirect_to login_url
    end
  end
end
