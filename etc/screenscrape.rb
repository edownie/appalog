require 'rubygems'
require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://twitter.com/cloudalog"))

doc.css('.entry-content').each do |link|
  puts link.content
end

