# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def new; end

  def create; end

  def show
    @quests = current_user.quests
  end
end
