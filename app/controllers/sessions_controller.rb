class SessionsController < ApplicationController
  def new
    @secret = SecureRandom.uuid.gsub('-', '')
  end
end
