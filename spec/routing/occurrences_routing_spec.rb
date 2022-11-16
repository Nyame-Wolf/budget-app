require 'rails_helper'

RSpec.describe OccurrencesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'categories/1/occurrences').to route_to('occurrences#index', category_id: '1')
    end

    it 'routes to #new' do
      expect(get: 'categories/1/occurrences/new').to route_to('occurrences#new', category_id: '1')
    end

    it 'routes to #show' do
      expect(get: 'categories/1/occurrences/1').to route_to('occurrences#show', id: '1', category_id: '1')
    end

    it 'routes to #edit' do
      expect(get: 'categories/1/occurrences/1/edit').to route_to('occurrences#edit', id: '1', category_id: '1')
    end

    it 'routes to #create' do
      expect(post: 'categories/1/occurrences').to route_to('occurrences#create', category_id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: 'categories/1/occurrences/1').to route_to('occurrences#update', id: '1', category_id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'categories/1/occurrences/1').to route_to('occurrences#update', id: '1', category_id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'categories/1/occurrences/1').to route_to('occurrences#destroy', id: '1', category_id: '1')
    end
  end
end
