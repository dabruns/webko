require 'rails_helper'

RSpec.describe RoomplansController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/roomplans').to route_to('roomplans#index')
    end

    it 'routes to #new' do
      expect(get: '/roomplans/new').to route_to('roomplans#new')
    end

    it 'routes to #show' do
      expect(get: '/roomplans/1').to route_to('roomplans#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/roomplans/1/edit').to route_to('roomplans#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/roomplans').to route_to('roomplans#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/roomplans/1').to route_to('roomplans#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/roomplans/1').to route_to('roomplans#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/roomplans/1').to route_to('roomplans#destroy', id: '1')
    end
  end
end
