class HomeController < ApplicationController
  def index
  	
  end

  def create
  	@msg = params[:tweet]
  	SendTweet.new(@msg).perform
  	redirect_to root_path
  end
end
