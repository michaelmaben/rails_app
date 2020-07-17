class Membership < ApplicationRecord
  belongs_to :user
  scope :active, -> { where(membership_status: 'active') }
  delegate :hello, to: :user
end
