require 'rails_helper'

RSpec.describe "Perks", :type => :request do
  describe "GET /perks" do
    it "works! (now write some real specs)" do
      get perks_path
      expect(response.status).to be(200)
    end
  end
end
