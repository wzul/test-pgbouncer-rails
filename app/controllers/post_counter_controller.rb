class PostCounterController < ApplicationController
  def reset
    pc = PostCounter.where(tags: "default").first
    pc.counter = 0
    pc.save

    redirect_to root_path
  end
end
