require 'byebug'
class SessionsController < ApplicationController
  def new
  end

  def create
    if !current_user.blank?
      session[:name] = current_user
      redirect_to welcome_path
    else
      redirect_to root_path
    end
  end

  def welcome
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
