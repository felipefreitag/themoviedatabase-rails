# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET /movies/:id', type: :request do
  subject { response }

  before do
    get '/movies/1'
  end

  it { is_expected.to have_http_status(:ok) }
end
