require 'rails_helper'

RSpec.describe 'SplashScreens', type: :request do
  before(:each) do
    get root_url
  end
  describe 'GET /index' do
    it 'renders a successful response' do
      expect(response).to be_successful
    end
    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
    it 'renders correct template text' do
      expect(response.body).to include('LOG IN')
    end
  end
end
