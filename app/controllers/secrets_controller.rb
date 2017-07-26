class SecretsController < ApplicationController
  before_action :current_user

  def show
    redirect_to root_path if !current_user
  end
end
