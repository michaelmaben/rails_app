class User < ApplicationRecord
  has_many :memberships
  scope :active,  ->(){joins(:memberships).merge(Membership.active)}
  # scope :active,  ->(){joins(:memberships)}

  def hello
    puts "hello"
  end

end
