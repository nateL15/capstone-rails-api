require 'rails_helper'

RSpec.describe "Champions", type: :request do
  describe "GET /champions" do
    it "works! (now write some real specs)" do
      get champions_path
      expect(response).to have_http_status(200)
    end
  end
end
