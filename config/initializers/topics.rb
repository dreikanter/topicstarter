def load_questions
  return load_questions_from_file unless Rails.env.production?
  load_questions_from_url
end

def load_questions_from_file
  File.read(Rails.root.join('db/questions.txt'))
end

def load_questions_from_url
  RestClient.get(ENV['QUESTIONS_SOURCE_URL']).body
end

QUESTIONS = load_questions.
  split("\n").
  map { |q| q.strip.gsub(/^\d+\.\s+/, '') }.
  reject(&:empty?).
  freeze
