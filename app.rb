require 'sinatra'

QUESTIONS_SOURCE_URL = ENV['QUESTIONS_SOURCE_URL']
QUESTIONS = open(QUESTIONS_SOURCE_URL).readlines.map(&:strip).reject(&:empty?)

get '/' do
  erb :index, locals: { question: QUESTIONS.sample }
end
