require 'rails_helper'

RSpec.describe ContactInfosController, :type => :controller do

  describe "GET sendmail" do
    it "returns http success" do
      get :sendmail
      expect(response).to have_http_status(:success)
    end
  end

end
