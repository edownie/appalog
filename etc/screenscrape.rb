require 'rubygems'
require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://twitter.com/gridlaborate"))

doc.css('.entry-content').each do |link|
  puts link.content
end

