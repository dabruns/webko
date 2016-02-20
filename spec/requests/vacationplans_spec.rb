require 'rails_helper'

RSpec.describe "Vacationplans", type: :request do
  describe "GET /vacationplans" do
    it "works! (now write some real specs)" do
      get vacationplans_path
      expect(response).to have_http_status(200)
    end
  end
end
