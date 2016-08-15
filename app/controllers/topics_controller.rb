class TopicsController < ApplicationController
  def new
    @question = QUESTIONS.sample
    @secret = params[:secret]
    return unless @secret.present?
    ActionCable.server.broadcast("topics:#{@secret}", question: @question)
  end
end
