class WelcomeController < ApplicationController
  def index
    @archalogs = Archalog.find(:all, :limit => 3)
  end
end