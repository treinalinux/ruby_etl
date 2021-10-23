# frozen_string_literal: true

require 'rubygems'
require 'nokogiri'
require 'open-uri'

quotes_url = Nokogiri::HTML5(URI.open('http://quotes.toscrape.com/'))

# Eu preciso da frase:
#
puts quotes_url.css('div')[10].css('span')[0].text

# Eu preciso do autor:
#
puts quotes_url.css('div')[10].css('span')[1].css('small').text

# Eu preciso do link do autor:
#
puts quotes_url.css('div')[10].css('a')[0]['href']

# Eu preciso das tags:
#
puts quotes_url.css('div')[10].css('meta')
