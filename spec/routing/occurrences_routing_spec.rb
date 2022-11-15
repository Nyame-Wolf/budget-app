require 'rails_helper'

RSpec.describe OccurrencesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/occurrences').to route_to('occurrences#index')
    end

    it 'routes to #new' do
      expect(get: '/occurrences/new').to route_to('occurrences#new')
    end

    it 'routes to #show' do
      expect(get: '/occurrences/1').to route_to('occurrences#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/occurrences/1/edit').to route_to('occurrences#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/occurrences').to route_to('occurrences#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/occurrences/1').to route_to('occurrences#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/occurrences/1').to route_to('occurrences#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/occurrences/1').to route_to('occurrences#destroy', id: '1')
    end
  end
end
