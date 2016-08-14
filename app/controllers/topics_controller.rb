class TopicsController < ApplicationController
  def new
    @question = QUESTIONS.sample
    puts session[:secret]
  end
end
