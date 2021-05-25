class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
#   def index
#     @users = User.all
#   end
  
#   def new
#     @user = User.new
#   end

#   def create
#     User.create(user_params)
#   if  @user.valid?
#       @user.save
#   end
# end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:profile,:occupation,:position])
  end
end
