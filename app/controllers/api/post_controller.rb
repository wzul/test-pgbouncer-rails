class Api::PostController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @pc = PostCounter.where(tags: "default").first
    # @pc.with_lock do
      if @pc.limit > @pc.counter
        # sleep(5)
        Post.create(post_params)
        @pc.increment!(:counter,1)
        render json: {message: "success #{post_params[:name]}"}
      else
        render json: {message: "already filled up."}
        false
      end
    # end

  end

  private
  def post_params
    args = params.permit(:name,:amount)
    args[:green] = true
    args
  end

end