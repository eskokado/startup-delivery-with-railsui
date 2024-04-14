require 'rails_helper'

RSpec.describe PageController, type: :controller do
  render_views

  actions_with_admin_layout = %i[
    integrations team billing notifications settings activity
    profile people calendar assignments message messages
    project projects dashboard
  ]

  actions_with_admin_layout.each do |action|
    describe "GET ##{action}" do
      it 'renders the admin layout' do
        get action
        expect(response).to render_template('layouts/admin')
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET #pricing' do
    it 'responds successfully' do
      get :pricing
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #about' do
    it 'responds successfully' do
      get :about
      expect(response).to have_http_status(:ok)
    end
  end
end
