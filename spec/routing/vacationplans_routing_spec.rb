require 'rails_helper'

RSpec.describe VacationplansController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/vacationplans').to route_to('vacationplans#index')
    end

    it 'routes to #new' do
      expect(get: '/vacationplans/new').to route_to('vacationplans#new')
    end

    it 'routes to #show' do
      expect(get: '/vacationplans/1').to route_to('vacationplans#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/vacationplans/1/edit').to route_to('vacationplans#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/vacationplans').to route_to('vacationplans#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/vacationplans/1').to route_to('vacationplans#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/vacationplans/1').to route_to('vacationplans#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/vacationplans/1').to route_to('vacationplans#destroy', id: '1')
    end
  end
end
