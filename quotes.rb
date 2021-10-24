# frozen_string_literal: true

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'httparty'

quotes_url = Nokogiri::HTML5(URI.open('http://quotes.toscrape.com/'))

puts quotes_url.css('span.text').text
puts quotes_url.css('span small.author').text
puts "https://quotes.toscrape.com#{quotes_url.css('span a').attribute('href').value}"
puts quotes_url.css('div.tags meta.keywords').attribute('content').value.split(',')
