class ThirdPolicy < ApplicationRecord
  validates :name, presence: true
  validates :config, presence: true
end
