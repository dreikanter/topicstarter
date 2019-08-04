class TopicsController < ApplicationController
  def new
    @question = questions.sample
    @secret = params[:secret]
    return unless @secret.present?
    ActionCable.server.broadcast("topics:#{@secret}", question: @question)
  end

  private

  def questions
    @questions ||= load_questions
      .split("\n")
      .map { |question| question.strip.gsub(/^\d+\.\s+/, '') }
      .reject(&:empty?)
      .freeze
  end

  def load_questions
    unless Rails.env.production?
      return File.read(Rails.root.join('db/questions.txt'))
    end

    RestClient.get(source_url).body
  end

  def source_url
    ENV.fetch('QUESTIONS_SOURCE_URL')
  end
end
