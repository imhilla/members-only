class ApplicationController < ActionController::Base

  helper_method :user_singin?
	private

	def user_authenticate_changed
    redirect_to root_path, notice: "You must login" unless user_signed_in?
  end

  def user_singin?
    !current_user1.nil?
  end
end
