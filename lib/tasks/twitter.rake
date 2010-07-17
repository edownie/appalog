desc "Get Tweets"
task :fetch_tweets => :environment do
  require 'open-uri'
  require 'nokogiri'
    Tweet.destroy_all
    doc = Nokogiri::HTML(open("http://twitter.com/cloudalog"))
    doc.css('.status-body').each do |item|
     description = item.at_css(".entry-content")
     tweeted_at = item.at_css(".entry-date")
     Tweet.create(:description => description.to_s, :tweeted_at => tweeted_at.to_s)
    end
    
    Archalog.destroy_all
    doc = Nokogiri::HTML(open("http://architecturenergy.wordpress.com/"))
    doc.css('.entry-title').each do |link|
     Archalog.create(:title => link.to_s)
    end
end


  