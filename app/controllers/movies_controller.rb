# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    data = fetch_data('movie/upcoming')
    return if data.nil?
    @movies = data['results'].presence
  end

  def show
    data = fetch_data("movie/#{params[:id]}")
    @movie = data.presence
  end

  private

  def fetch_data(path)
    uri = "#{base_path}#{path}?api_key=#{ENV['API_KEY']}&language=en-US&"
    response = Excon.get(uri)
    return unless success?(response)
    JSON.parse(response.body) if response.body.present?
  end

  def success?(response)
    response.status >= 200 && response.status < 400
  end
end
