class Tupperware < ApplicationRecord
  after_create :sleeping

  def sleeping
    sleep 30
  end

end
