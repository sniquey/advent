require 'rails_helper'

RSpec.describe "Advents", :type => :request do
  describe "GET /advents" do
    it "works! (now write some real specs)" do
      get advents_path
      expect(response).to have_http_status(200)
    end
  end
end
