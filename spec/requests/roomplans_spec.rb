require 'rails_helper'

RSpec.describe 'Roomplans', type: :request do
  describe 'GET /roomplans' do
    it 'works! (now write some real specs)' do
      get roomplans_path
      expect(response).to have_http_status(200)
    end
  end
end
