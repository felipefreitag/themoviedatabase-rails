# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET /movies', type: :request do
  subject { response }

  before do
    get movies_path
  end

  it { is_expected.to have_http_status(:ok) }
end
