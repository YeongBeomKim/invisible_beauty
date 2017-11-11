class HomeController < ApplicationController
  def index
    @post = Post.new();
    @all_missions = Mission.all
    @user_missions = current_user.missions
  end
end
