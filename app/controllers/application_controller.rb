# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def base_path
    'https://api.themoviedb.org/3/'
  end
end
