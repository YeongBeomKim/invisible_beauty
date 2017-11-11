class EchosController < ApplicationController
  def post_echo_toggle
    @echo = Echo.find_by(user_id: current_user.id, post_id: params[:post_id])
    if @echo.nil?
      Echo.create(user_id: current_user.id, post_id: params[:post_id])
    else
      @echo.destroy
    end
  end
  def comment_echo_toggle
    @echo = Echo.find_by(user_id: current_user.id, post_id: params[:post_id],comment_id: parmas[:comment_id])
    if @echo.nil?
      Echo.create(user_id: current_user.id, post_id: params[:post_id],comment_id: parmas[:comment_id])
    else
      @echo.destroy
    end
  end
end
