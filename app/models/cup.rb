class Cup < ApplicationRecord
  has_many :owners

  accepts_nested_attributes_for :owners, reject_if: :all_blank
end
