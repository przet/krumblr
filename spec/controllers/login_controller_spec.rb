require 'rails_helper'

RSpec.describe LoginController, type: :controller do

  describe "GET #rootview" do
    it "returns http success" do
      get :rootview
      expect(response).to have_http_status(:success)
    end
  end

end
