class FavoritesController < ApplicationController

   def index
      @favorites = Favorite.all.where(user_id: session[:user_id])
   end

   def create
    @favorite = Favorite.create(favorite_params)
    @favorite.update_attribute(:user_id, session[:user_id])
    redirect_to favorites_path
end


private

   def favorite_params
      params.require(:favorite).permit(:memory_id)
   end
end
