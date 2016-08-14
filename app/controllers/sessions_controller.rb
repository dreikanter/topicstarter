class SessionsController < ApplicationController
  def new
    @secret = [timestamp, new_uuid].join
  end

  def show
    session[:secret] = secret
    redirect_to new_topic_path
  end

  private

  def secret
    params.require(:secret)
  end

  def timestamp
    Time.now.strftime("%Y%m%dT%H%M%S")
  end

  def new_uuid
    SecureRandom.uuid.gsub('-', '')
  end
end
