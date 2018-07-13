require 'rails_helper'

RSpec.describe CreatepostController, type: :controller do

  describe "GET #write" do
    it "returns http success" do
      get :write
      expect(response).to have_http_status(:success)
    end
  end

end
