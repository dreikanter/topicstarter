class TopicsController < ApplicationController
  def new
    @question = QUESTIONS.sample
  end
end
