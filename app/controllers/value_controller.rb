class ValueController < ApplicationController
  before_filter :authorize
  def index
    @tweets = Tweet.find(:all, :limit => 1, :order => 'tweeted_at DESC')
  end

end
