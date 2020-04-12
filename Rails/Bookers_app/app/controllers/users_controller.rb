class UsersController < ApplicationController
  before_action :ensure_correct_user, {only: [:edit, :update]}

  def index
  	@book = Book.new
  	@users = User.all
  	@user = current_user
  end

  def show
  	@book = Book.new
  	@user = User.find(params[:id])
  	@books = @user.books.all
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	user = User.find(params[:id])
  	if  user.update(user_params)
      flash[:notice] = "You have creatad book successfully."
  	  redirect_to user_path(user.id)
    else
      @user = user
      render :edit
    end
  end
  def ensure_correct_user
    user = User.find(params[:id])
    if user != current_user
      redirect_to user_path(current_user)
    end
  end
  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
