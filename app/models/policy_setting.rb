class PolicySetting < ApplicationRecord
  validates :name, presence: true
  validates :settings, presence: true
end
