class UsersController < ApplicationController

  def index
      @user = User.new
  end

  def trips
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.image_url ||= "https://pngimage.net/wp-content/uploads/2018/05/default-user-profile-image-png-6.png"
    if @user
    @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
    else
      flash[:message] = "Nuh thats wrong"
      redirect_to login_path
    end
  end

  def show
    @user = User.find(params[:id])
    @all_trips = Trip.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end


  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :country, :city, :bio, :image_url)
  end


end
