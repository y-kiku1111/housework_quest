require 'rails_helper'

describe QuestsController do
  let(:user) { create(:user) }
  describe 'GET #new' do

    it "new.html.erbに遷移すること" do
      get :new
      expect(response).to render_template :new
    end

  end


end