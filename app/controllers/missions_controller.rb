class MissionsController < ApplicationController
  def create
    @mission = Mission.create()
    current_user.missions << @mission
    redirect_to root_path
  end
end
