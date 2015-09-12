require 'rails_helper'

RSpec.describe "Boodles", type: :request do
  describe "GET /boodles" do
    it "works! (now write some real specs)" do
      get boodles_path
      expect(response).to have_http_status(200)
    end
  end
end
