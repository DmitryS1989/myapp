require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/users/new'
      expect(response.status).to eq(200)
      expect(response).to have_http_status(:success)
    end
  end
end
