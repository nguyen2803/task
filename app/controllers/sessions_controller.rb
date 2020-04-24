# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = login(params[:email], params[:password])
    if user
      redirect_back_or_to search_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    logout
    flash[:info] = 'Logged out'
    redirect_to root_url
  end
end
