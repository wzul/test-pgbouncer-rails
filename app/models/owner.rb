class Owner < ApplicationRecord
  belongs_to :cup

  accepts_nested_attributes_for :cup, reject_if: :all_blank
end
