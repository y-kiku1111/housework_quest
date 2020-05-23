class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @nickname = current_user.nickname
    @quests = current_user.quests
  end


end
