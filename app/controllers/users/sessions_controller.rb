# frozen_string_literal: true

class Users::SessionsController < ApplicationController
  def new; end
  def destroy
    log_out
    redirect_to login_path, notice: "ログアウトしました"
  end

  def callback
    auth_info = request.env["omniauth.auth"]
    user = User.sync_with_discord(auth_info)
    reset_session
    log_in user
    redirect_to root_path, notice: "ログインしました"
  end
end
