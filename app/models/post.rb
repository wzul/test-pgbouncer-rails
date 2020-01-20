class Post < ApplicationRecord
  after_commit :helo

  def helo
    puts "hi"
  end
end
