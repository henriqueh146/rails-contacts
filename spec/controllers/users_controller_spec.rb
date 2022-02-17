require "rails_helper"

RSpec.describe UsersController, type: :controller do
  context 'Request/response for user listing' do
    it 'Should contain 200 as HTTP answer and the payload' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
