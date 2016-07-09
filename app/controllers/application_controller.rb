class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_student!

  def check_student!
    unless params[:controller] == 'home'
      authenticate_student!
    end
  end
end
