require 'rails_helper'

RSpec.describe 'StaticPagesControllers', type: :request do

  describe 'GET /home' do
    it 'should get home' do
      get '/home'
      expect(response.status).to eq(200)
      expect(response).to render_template('home')
      expect(response).to have_title('Home | Ruby on Rails Tutorial Sample App', exact: true)
    end
  end
  describe 'GET /help' do
    it 'should get help ' do
      get '/help'
      expect(response.status).to eq(200)
      expect(response).to render_template('help')
      expect(response).to have_title('Home | Ruby on Rails Tutorial Sample App', exact: true)

    end
  end
  describe 'GET /about' do
    it 'should get about ' do
      get '/about'
      expect(response.status).to eq(200)
      expect(response).to render_template('about')
      expect(response).to have_title('About | Ruby on Rails Tutorial Sample App', exact: true)
    end

  end
end
