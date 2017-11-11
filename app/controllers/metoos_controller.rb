class MetoosController < ApplicationController
  def create
    @metoo = Metoo.find_by(user_id: current_user.id, post_id: params[:post_id])
    if @metoo.nil?
      Metoo.create(user_id: current_user.id, post_id: params[:post_id])
    else
      @metoo.destroy
    end
    redirect_back(fallback_location: root_path)
  end
end
