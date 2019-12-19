class WelcomeController < ApplicationController
  def index
    @pc = PostCounter.where(tags: "default").first
  end
end
