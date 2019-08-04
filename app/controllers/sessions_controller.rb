class SessionsController < ApplicationController
  def new
    @secret = SecureRandom.alphanumeric
  end
end
