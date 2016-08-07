require 'rest-client'
require 'sinatra'

QUESTIONS_SOURCE_URL = ENV['QUESTIONS_SOURCE_URL']
QUESTIONS = RestClient.get(QUESTIONS_SOURCE_URL).body.split("\n").map(&:strip).reject(&:empty?)

get '/' do
  erb :index, locals: { question: QUESTIONS.sample }
end
