class WelcomeController < ApplicationController
  def index
    @archalogs = Archalog.find(:all, :limit => 3)
    @tweets = Tweet.find(:all, :limit => 1, :order => 'tweeted_at DESC')
  end
end