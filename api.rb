require 'httparty'
require 'nokogiri'

def ask(question)
	puts question
	gets.chomp
end

response = HTTParty.get('')

  puts response.body