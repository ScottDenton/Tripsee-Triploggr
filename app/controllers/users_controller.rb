class UsersController < ApplicationController
  helper_method :user?
  helper_method :current_profiles_trips
  helper_method :current_profile_user
  helper_method :user_logged_in

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

    if !@user.image_url.include?('jpg') || !@user.image_url.include?('png')
      @user.image_url = "https://pngimage.net/wp-content/uploads/2018/05/default-user-profile-image-png-6.png"
    end


   @user.valid?

   if @user && @user.valid?

    @user.save
    session[:user_id] = @user.id

    redirect_to user_path(@user)
    else
      @errors =  @user.errors.full_messages

      render :new
    end

  end

  def show
    @user = User.find(params[:id])


    if params[:q] == nil
      @all_trips = Trip.all
    else
      @all_trips = Trip.all.select{|trip| trip.location.city.downcase == params[:q][:location_id].downcase}
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def user?
    session[:user_id] == params[:id].to_i
  end

  def search_by_keyword(keyword)
    @memories = Memory.all.select{|memory| memory.activity.downcase.include?(keyword.downcase)}
  end


  def search_by_location(location)
    @trips = Trip.all.select{|trip| trip.location.city == location }
  end

  def current_profiles_trips
    user = User.find(params[:id])
    @profiles_trips = Trip.all.select{|trip| trip.user == user}
  end

  def current_profile_user
    User.find(params[:id])
  end

  def user_logged_in
    User.find(session[:user_id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :country, :city, :bio, :image_url)
  end
end
