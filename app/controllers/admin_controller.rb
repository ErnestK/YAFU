class AdminController < ApplicationController
  def index
    @users_count = User.count
    @users = User.all
  end
end
