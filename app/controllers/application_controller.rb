class ApplicationController < ActionController::Base
  before_action :authorize

  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to store_index_url, notice: "Please log in"
    end
  end
end
