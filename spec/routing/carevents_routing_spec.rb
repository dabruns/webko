require 'rails_helper'

RSpec.describe CareventsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/carevents').to route_to('carevents#index')
    end

    it 'routes to #new' do
      expect(get: '/carevents/new').to route_to('carevents#new')
    end

    it 'routes to #show' do
      expect(get: '/carevents/1').to route_to('carevents#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/carevents/1/edit').to route_to('carevents#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/carevents').to route_to('carevents#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/carevents/1').to route_to('carevents#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/carevents/1').to route_to('carevents#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/carevents/1').to route_to('carevents#destroy', id: '1')
    end
  end
end
