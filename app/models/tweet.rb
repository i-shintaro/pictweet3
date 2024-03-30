class Tweet < ApplicationRecord
  validates :text, presence: true
  belons_to :user
end
