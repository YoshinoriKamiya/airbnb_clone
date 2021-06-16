class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  end

  # before_action :correct_user, only: [:edit, :update]
  # before_action :only_loggedin_users, only: [:edit, :update,:destroy]
#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.save
#       flash[:success] = "Saved successfully"
#       redirect_to login_url
#     else
#       flash[:danger] = "Invaild content. Try again"
#       render 'new'
#     end
#   end

#   def show
#   @user = User.find(params[:id])
# end
 

#   private
#   def user_params
#     params.require(:user).permit(:name, :email, :password)
#   end

#   def only_loggedin_users
#     redirect_to login_url unless logged_in?
#  end
   
#   def correct_user
#     @user = User.find(params[:id])
#     redirect_to(roo_url) unless current_user?(@user)
#   end
# end
