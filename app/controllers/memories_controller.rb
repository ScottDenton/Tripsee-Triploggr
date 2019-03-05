class MemoriesController < ApplicationController

  def new
    byebug
    @memory = Memory.new
  end

  def show

    @memory = Memory.find(params[:id])
  end

end
