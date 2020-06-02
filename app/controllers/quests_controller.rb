# frozen_string_literal: true

class QuestsController < ApplicationController
  before_action :set_quest, only: %i[show edit update destroy]

  # GET /quests
  # GET /quests.json
  def index
    if user_signed_in?
      redirect_to users_path
    else
      @quests = Quest.all
    end
  end

  # GET /quests/1
  # GET /quests/1.json
  def show; end

  # GET /quests/new
  def new
    @quest = Quest.new
  end

  # GET /quests/1/edit
  def edit; end

  # POST /quests
  # POST /quests.json
  def create
    @quest = Quest.new(quest_params)

    respond_to do |format|
      if @quest.save
        format.html { redirect_to user_path(current_user.id), notice: 'Quest was successfully created.' }
        format.json { render :show, status: :created, location: @quest }
      else
        format.html { render :new }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quests/1
  # PATCH/PUT /quests/1.json
  def update
    respond_to do |format|
      if @quest.update(quest_params)
        format.html { redirect_to @quest, notice: 'Quest was successfully updated.' }
        format.json { render :show, status: :ok, location: @quest }
      else
        format.html { render :edit }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quests/1
  # DELETE /quests/1.json
  def destroy
    @quest.destroy
    respond_to do |format|
      format.html { redirect_to quests_url, notice: 'Quest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quest
    @quest = Quest.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def quest_params
    params.require(:quest).permit(:name, :price).merge(user_id: current_user.id)
  end

  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to users_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
