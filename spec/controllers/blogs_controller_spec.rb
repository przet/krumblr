require 'rails_helper'

RSpec.describe BlogsController, type: :controller do
  describe "get #index" do
    it "renders the :index view" do
        get :index
          response.should render_template :index
    end
  end
end
