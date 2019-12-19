class PostsController < ApplicationController
  def index
    @posts = Post.order('id desc')
  end
  def new
    @post = Post.new
    @post.amount = rand(1000)
    @post.name = Faker::Name.name
  end

  def create
    
    @pc = PostCounter.where(tags: "default").first
    @pc.with_lock do
      if @pc.limit > @pc.counter
        sleep(10)
        Post.create(post_params)
        @pc.increment!(:counter,1)
      else
        false
      end
    end
  end

  private

  def post_params
    args = params.require(:post).permit(:name,:amount)
    args[:green] = true
    args
  end
end
